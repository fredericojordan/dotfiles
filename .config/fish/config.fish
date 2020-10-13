# source custom files
source $HOME/.config/fish/functions/aliases.fish
source $HOME/.config/fish/functions/start_tmux.fish

# tmux auto start local
set -U TMUX_AUTO_START_LOCAL 1

# change directory
# cd ~/dev/

if status is-interactive >/dev/null
    set -q TMUX_AUTO_START_LOCAL;  or set -U TMUX_AUTO_START_LOCAL  0
    set -q TMUX_AUTO_START_REMOTE; or set -U TMUX_AUTO_START_REMOTE 0
    __tmux_start
end

# load asdf
source /usr/local/opt/asdf/asdf.fish
