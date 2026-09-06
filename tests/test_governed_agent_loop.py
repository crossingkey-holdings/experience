import importlib.util
import pathlib
import unittest

ROOT = pathlib.Path(__file__).resolve().parents[1]
SAMPLE = ROOT / "samples" / "governed-agent-loop.py"
spec = importlib.util.spec_from_file_location("governed_agent_loop", SAMPLE)
module = importlib.util.module_from_spec(spec)
assert spec.loader is not None
spec.loader.exec_module(module)


class GovernedAgentLoopTests(unittest.TestCase):
    def test_unauthorized_action_never_runs(self):
        called = False

        def action():
            nonlocal called
            called = True
            return "unexpected"

        receipt = module.execute_bounded("blocked", action, authorized=False)
        self.assertFalse(called)
        self.assertFalse(receipt.success)
        self.assertEqual(receipt.attempts, 0)
        self.assertIn("not authorized", receipt.errors[0].lower())

    def test_authorized_action_succeeds(self):
        receipt = module.execute_bounded("ok", lambda: "done", authorized=True)
        self.assertTrue(receipt.success)
        self.assertEqual(receipt.result, "done")
        self.assertEqual(receipt.attempts, 1)

    def test_retry_then_success(self):
        calls = 0

        def action():
            nonlocal calls
            calls += 1
            if calls < 2:
                raise RuntimeError("transient")
            return "recovered"

        receipt = module.execute_bounded("retry", action, authorized=True)
        self.assertTrue(receipt.success)
        self.assertEqual(receipt.attempts, 2)
        self.assertEqual(receipt.result, "recovered")
        self.assertEqual(len(receipt.errors), 1)

    def test_retry_exhaustion_escalates(self):
        def action():
            raise ValueError("still failing")

        receipt = module.execute_bounded("fail", action, authorized=True)
        self.assertFalse(receipt.success)
        self.assertEqual(receipt.attempts, module.MAX_RETRIES)
        self.assertIn("human review required", receipt.errors[-1].lower())

    def test_receipt_preserves_action_and_authority(self):
        receipt = module.execute_bounded("inspect", lambda: 7, authorized=True)
        self.assertEqual(receipt.action, "inspect")
        self.assertTrue(receipt.authorized)
        self.assertEqual(receipt.result, 7)


if __name__ == "__main__":
    unittest.main()
