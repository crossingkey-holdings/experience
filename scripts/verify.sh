#!/usr/bin/env bash
set -Eeuo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

fail() { printf 'FAIL: %s\n' "$*" >&2; exit 1; }

if find . -type d -name __pycache__ -print -quit | grep -q .; then
  fail "__pycache__ directory is packaged"
fi
if find . -type f -name '*.pyc' -print -quit | grep -q .; then
  fail "Python bytecode is packaged"
fi

python3 -m py_compile samples/governed-agent-loop.py
rm -rf samples/__pycache__
python3 -m unittest -v tests/test_governed_agent_loop.py
rm -rf samples/__pycache__ tests/__pycache__

python3 - <<'PY'
from pathlib import Path
import re
root = Path('.')
pat = re.compile(r'\[[^\]]*\]\(([^)]+)\)')
errors = []
for md in root.rglob('*.md'):
    text = md.read_text(encoding='utf-8')
    for target in pat.findall(text):
        if target.startswith(('http://', 'https://', 'mailto:', '#')):
            continue
        target = target.split('#', 1)[0]
        if not target:
            continue
        if not (md.parent / target).resolve().exists():
            errors.append(f'{md}: missing relative link {target}')
if errors:
    raise SystemExit('\n'.join(errors))
print('PASS: relative Markdown links resolve')
PY

sha256sum -c MANIFEST.sha256
printf 'PASS: manifest verified\n'
printf 'PASS: package verification complete\n'
