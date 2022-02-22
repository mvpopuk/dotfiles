# FILE: iceberg_minimal.tmux.conf
# REPO: https://github.com/gkeep/iceberg-dark
# MAINTAINER: gkeep <gkeep77@protonmail.com>

set -g status-position bottom
set -g status-justify centre
set -g status-style "bg=#1e2132"
set -g window-style ""
set -g window-active-style ""

# modules
module_left_1="#h"
module_left_2="#{client_width}x#{client_height}"

module_right_1="%a %d %b"
module_right_2="%R %Z"

set -g status-left " #[fg=#c6c8d1]$module_left_1 #[fg=#6b7089]$module_left_2"
set -g status-left-style ""
set -g status-left-length 50

set -g status-right "$module_right_1 #[fg=#c6c8d1]$module_right_2 "
set -g status-right-style "fg=#6b7089"
set -g status-right-length 25

set -g window-status-current-style "bold"
set -g window-status-style "fg=#6b7089"
set -g window-status-format " #[fg=#c6c8d1]#{?#{==:#W,fish},#{b:pane_current_path},#W}#F "
set -g window-status-current-format " #[fg=#c6c8d1]#{?#{==:#W,fish},#{b:pane_current_path},#W}#F "
set -g window-status-separator ""

set -g pane-active-border-style "fg=#6b7089"
set -g pane-border-style "fg=#6b7089"
