// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
pub struct Frame { pub rounds: u64, pub next_report: u64 }
impl Frame {
    fn report_due(&self, now: u64) -> (due: bool)
        ensures due == (self.next_report <= now),
    {
        self.next_report <= now
    }
    // An unconditional write, then a write in one arm of a value-producing
    // `if`/`else`: Verus resolves `self` separately in each arm.
    fn round(&mut self, now: u64) -> (reported: bool)
        requires old(self).rounds < 100, now < 100,
        ensures
            final(self).rounds == old(self).rounds + 1,
            reported ==> final(self).next_report == now + 5,
            !reported ==> final(self).next_report == old(self).next_report,
    {
        self.rounds = self.rounds + 1;
        if self.report_due(now) {
            self.next_report = now + 5;
            true
        } else {
            false
        }
    }
}
// One resolution per arm of an `if`/`else if` chain: nested joins.
fn set_level(x: &mut u64, k: u64)
    ensures
        k == 0 ==> *final(x) == 1,
        k == 1 ==> *final(x) == 2,
        k >= 2 ==> *final(x) == 3,
{
    if k == 0 {
        *x = 1;
    } else if k == 1 {
        *x = 2;
    } else {
        *x = 3;
    }
}
// The returning arm resolves `x` where it starts; the fall-through path
// resolves it after its own write.
fn clamp_to(x: &mut u64, limit: u64)
    ensures
        *final(x) <= limit,
        *final(x) <= *old(x),
{
    if *x <= limit {
        return;
    }
    *x = limit;
}
fn caller() {
    let mut f = Frame { rounds: 0, next_report: 0 };
    let reported = f.round(7);
    assert(f.rounds == 1);
    assert(reported ==> f.next_report == 12);
}
}
