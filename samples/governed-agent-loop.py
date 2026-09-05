"""
Public-safe illustrative sample showing bounded execution,
explicit authorization, retry limits, receipts, and escalation.
"""
from dataclasses import dataclass, field
from typing import Callable, Any

MAX_RETRIES = 3

@dataclass
class Receipt:
    action: str
    authorized: bool
    attempts: int = 0
    success: bool = False
    result: Any = None
    errors: list[str] = field(default_factory=list)

def execute_bounded(action_name: str, action: Callable[[], Any], *, authorized: bool) -> Receipt:
    receipt = Receipt(action=action_name, authorized=authorized)
    if not authorized:
        receipt.errors.append("Action is not authorized.")
        return receipt

    for attempt in range(1, MAX_RETRIES + 1):
        receipt.attempts = attempt
        try:
            receipt.result = action()
            receipt.success = True
            return receipt
        except Exception as exc:
            receipt.errors.append(f"{type(exc).__name__}: {exc}")

    receipt.errors.append("Retry limit reached; human review required.")
    return receipt
