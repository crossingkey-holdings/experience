#!/usr/bin/env bash
set -u
OWNER="crossingkey-holdings"
REPO="jeremy-allen-experience"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT" || exit 1

command -v git >/dev/null || { echo "git is required"; exit 1; }
command -v gh >/dev/null || { echo "GitHub CLI (gh) is required"; exit 1; }

echo "[1/6] GitHub authentication"
gh auth status || gh auth login

echo "[2/6] Local Git repository"
if [ ! -d .git ]; then git init -b main; fi
git config user.name >/dev/null 2>&1 || git config user.name "Jeremy Paul Allen"
git config user.email >/dev/null 2>&1 || git config user.email "crossingkey.holdings@gmail.com"

echo "[3/6] Commit"
git add .
if ! git diff --cached --quiet; then
  git commit -m "Publish Jeremy Allen professional experience and governed agent systems portfolio"
fi

echo "[4/6] GitHub repository"
if gh repo view "$OWNER/$REPO" >/dev/null 2>&1; then
  echo "Repository already exists."
else
  gh repo create "$OWNER/$REPO" \
    --public \
    --description "Jeremy Paul Allen — governed AI agents, automation, cloud infrastructure, commerce, and verified engineering experience." \
    --source=. \
    --remote=origin
fi

if ! git remote get-url origin >/dev/null 2>&1; then
  git remote add origin "https://github.com/$OWNER/$REPO.git"
fi

echo "[5/6] Push"
git branch -M main
git push -u origin main

echo "[6/6] Verify"
gh repo view "$OWNER/$REPO"
echo
echo "LIVE: https://github.com/$OWNER/$REPO"
