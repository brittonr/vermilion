---
title: Generated modules allow auto-bound implicits, so dangling IR names elaborate silently
labels: [enhancement, vcgen, foundations]
state: closed
github: 6
---

*Evidence level: the core Lean 4.33 behaviour was executed; the rendering
code was read statically.*

`Render.lean` sets only linter options in generated modules.
`autoImplicit` keeps Lean's default (on), and the lakefile does not
override it. Any name the generator emits without binding it therefore
becomes an implicit binder **of inferred type** for the whole theorem,
rather than an error:

```
theorem t (x : Int) (h : y = y) : x = x := rfl
#check @t   -- ∀ {α : Sort u_1} {y : α} (x : Int), y = y → x = x
```

The Lean side has no other guard for this. `Obligation.hygieneViolations`
checks rendering collisions and capture, but not "every free variable of
every hypothesis and goal is a telescope binder".

Because the binder is universally quantified, this cannot make a false
statement provable. What it can do is turn a generator or lowering bug into
a **weaker or useless hypothesis**, or a goal about the wrong type, with no
diagnostic. One live instance is
#2. It also undermines the
fail-closed principle in `trust.md`.

### Proposal

- Emit `set_option autoImplicit false` (and `relaxedAutoImplicit false`) in
  every generated module, in the Specs and Evidence units, and in the twin
  headers that `vrml_sync` writes.
- Add a scope check to `Obligation.hygieneViolations`: each hypothesis and
  goal must have free variables ⊆ type params ∪ binders ∪ prelude
  constants. `vrml_gen` already fails closed on its violations, so the bug
  becomes a generation error at the right span.
- Add a regression test in `scripts/test_render_hygiene.sh`.

Statement hashes do not change, because the option is outside the
canonical statement text, so existing user twins survive.

## Resolution

Commit `66e0615`.

Fixed, and it surfaced a real lowering bug.

- **Options.** Package-level `leanOptions` in `lakefile.lean` turn
  `autoImplicit` and `relaxedAutoImplicit` off for every proof library.
  The `Vermilion` library and `vrml_gen` keep Lean's defaults, because
  they rely on auto-bound universes. `vrml_check` passes the same `-D`
  options to every `lean` and `vrml_worker` it starts.
- **Scope check.** `Obligation.hygieneViolations` now reports any variable
  free in a hypothesis or the goal that the telescope does not bind, so
  `vrml_gen` fails closed. Unit checks are in `tests/render_hygiene.lean`.
  `docs/vcgen.md` `(HYGIENE)` is updated.
- **What it found.** The bound variables of `assert forall|x| … by { … }`
  reach SST as plain locals that are never assigned. The lowering's
  variable lookup fell back to the raw name, so committed twins
  (`primes`, and many dalek-lite units) carried obligations that mention
  `factor`/`i`/`j` unbound. The auto-bound implicit hid it.
- **Worse, in dalek-lite.** Where an enclosing loop variable had the same
  name, the "unbound" `i` was silently the loop's `i` binder, and the
  block's `assume`s constrained the loop variable. That is a capture with
  soundness implications.
- **Lowering fix.** `crates/vermilion_direct/src/lower.rs` gains
  `declare_havocked_locals`: at an `assume`, any declared local
  (`FuncCheckSst::local_decls`) that is read before assignment gets a
  fresh binder in the current scope. A `DeadEnd` scope discards it again.
  This is Verus's havoc-at-declaration semantics; `&mut` temporaries are
  excluded.
- **Twins.** The `primes` twin and 21 dalek-lite twin files were
  re-reconciled, with new `(i : Int)`/`(j : Int)` binders, and `i_2` where
  the name clashed with a loop variable. No user proof was affected. An
  elaboration pass over every dalek-lite unit twin, with
  `autoImplicit=false`, shows no unbound names. Fresh binders shift the
  statement offsets that `assert_bv_*` ids count, so some bit-vector
  obligations in those files were renamed (and the old twins' duplicate
  `assert_bv_5_0` names became unique). Every block that was a `sorry`
  placeholder before is still one.
- **One hand-written proof file** relied on an auto-bound `α`
  (`examples/vermilion-blog/proofs/BlogSnippets.lean`). It now binds it
  explicitly.
