#!/bin/bash

# Configure git to leave PR comments as the GitHub Actions Bot
# Bot: https://api.github.com/users/github-actions%5Bbot%5D
# Source: https://github.community/t/github-actions-bot-email-address/17204
# BOT_USER="github-actions[bot]"
# BOT_EMAIL="41898282+github-actions[bot]@users.noreply.github.com"
BOT_USER="lhasa-ospo"
BOT_EMAIL="ossdev@wayfair.com"

git config --local user.name ${BOT_USER}
git config --local user.email ${BOT_EMAIL}
git commit -m "Process ${GITHUB_ACTOR}'s request (PR #${GITHUB_PR})"
git push
