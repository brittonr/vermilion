// expect: fail @ 15
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
    fn round(&mut self, now: u64) -> (reported: bool)
        requires old(self).rounds < 100, now < 100,
        ensures
            final(self).next_report == old(self).next_report, // false when it reports
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
}
