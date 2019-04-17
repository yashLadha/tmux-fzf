#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux list-sessions | sed -E 's/:.*$//'  | grep -v \"^$(tmux display-message -p '#S')\$\" | "$CURRENT_DIR/.fzf-tmux" | xargs tmux kill-session -t
