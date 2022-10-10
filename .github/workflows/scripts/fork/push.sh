#!/bin/bash

# Configure git to leave PR comments as the lhasa-ospo service account
BOT_USER="lhasa-ospo"
BOT_EMAIL="ossdev@wayfair.com"

git config --local user.name ${BOT_USER}
git config --local user.email ${BOT_EMAIL}
git commit -m "Process ${GITHUB_ACTOR}'s request (PR #${GITHUB_PR})"
git push
