fundle plugin 'edc/bass'

fundle init

starship init fish | source

# config.fish
if not pgrep -f ssh-agent > /dev/null
  eval (ssh-agent -c)
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end

mcfly init fish | source

# Ctrl-N: Complete based on the tmux buffer content.
bind \cn "commandline -i (fzf-complete-from-tmux.sh) 2>/dev/null"
