####################################### 
# General
####################################### 
set-option -g prefix C-a
set-option -g escape-time 400
set-option -g default-shell /bin/sh
set-option -g default-command "exec $(default_shell)"
set-option -g default-terminal screen-256color
set-option -g base-index 1

####################################### 
# Key Bindings
####################################### 
bind-key C-a send-prefix
bind-key C-d detach
unbind-key d
unbind-key '"'
unbind-key %

# Horizontal and Vertical Split
bind-key | split-window -h
bind-key - split-window -v

# Pane Movement
bind-key j select-pane -U
bind-key h select-pane -L
bind-key k select-pane -D
bind-key l select-pane -R 

# Pane Resize
bind-key C-j resize-pane -U
bind-key C-h resize-pane -L
bind-key C-k resize-pane -D
bind-key C-l resize-pane -R

####################################### 
# Session
####################################### 

if 'tmux has -t $USER' 'attach -t $USER' 'new -A -s $USER'

#######################################
# Plugins
#######################################

set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'

run '$TMUX_PLUGIN_MANAGER_PATH/tpm'
