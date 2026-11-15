---
title: Generated modules allow auto-bound implicits, so dangling IR names elaborate silently
labels: [enhancement, foundations, vcgen]
state: open
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
