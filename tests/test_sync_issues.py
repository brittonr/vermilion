"""Regression tests for which local file the issue sync trusts for a number."""
import sys
import unittest
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "scripts"))
from sync_issues import resolve_claims


def claim(name, title):
    return (Path(name), {"title": title}, "body")


class ResolveClaimsTests(unittest.TestCase):
    def test_file_with_the_issue_title_wins_a_number_collision(self):
        # A fork's own #3 next to the file its parent repository numbered 3.
        claims = {3: [claim("parent.md", "Formal semantics"), claim("own.md", "Evidence pass")]}
        files, unresolved, warnings, conflicts = resolve_claims(
            claims, {3: {"title": "Evidence pass"}}, {})
        self.assertEqual(files[3][0], Path("own.md"))
        self.assertEqual((unresolved, conflicts), (set(), []))
        self.assertEqual(len(warnings), 1)
        self.assertIn("parent.md", warnings[0])

    def test_lone_file_with_another_title_is_not_trusted_unsynced(self):
        files, unresolved, warnings, conflicts = resolve_claims(
            {7: [claim("parent.md", "Formal semantics")]}, {7: {"title": "Evidence pass"}}, {})
        self.assertEqual((files, unresolved), ({}, {7}))
        self.assertEqual(len(conflicts), 1)

    def test_lone_file_retitled_since_its_last_sync_is_trusted(self):
        files, unresolved, _, conflicts = resolve_claims(
            {7: [claim("own.md", "New title")]}, {7: {"title": "Old title"}},
            {"7": {"sha": "0", "updatedAt": "t"}})
        self.assertEqual(files[7][0], Path("own.md"))
        self.assertEqual((unresolved, conflicts), (set(), []))

    def test_two_files_with_the_issue_title_are_a_conflict(self):
        claims = {7: [claim("a.md", "Evidence pass"), claim("b.md", "Evidence pass")]}
        files, unresolved, _, conflicts = resolve_claims(
            claims, {7: {"title": "Evidence pass"}}, {"7": {"sha": "0", "updatedAt": "t"}})
        self.assertEqual((files, unresolved), ({}, {7}))
        self.assertEqual(len(conflicts), 2)

    def test_number_absent_on_github_is_skipped(self):
        files, unresolved, warnings, conflicts = resolve_claims(
            {41: [claim("parent.md", "Formal semantics")]}, {}, {})
        self.assertEqual((files, unresolved, conflicts), ({}, set(), []))
        self.assertEqual(len(warnings), 1)


if __name__ == "__main__":
    unittest.main()
