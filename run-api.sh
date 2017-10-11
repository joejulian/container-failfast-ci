#!/bin/bash
export PORT=${PORT:-5000}
export GITHUB_CONTEXT GITLAB_TRIGGER GITLAB_TOKEN GITLAB_USER GITLAB_REPO
gunicorn hub2labhook.api.wsgi:app -b :$PORT --timeout 120 -w 4 --reload
