function __tmux_start -d "start tmux"
    # return if requirements are not found.
    if not which tmux >/dev/null 2>&1
        return 1
    end

    #
    # Auto Start
    #

    if test -z "$TMUX" -a -z "$EMACS" -a -z "$VIM" \
            -a \( \( -n "$SSH_TTY" -a $TMUX_AUTO_START_REMOTE -eq 1 \) \
                -o \( -z "$SSH_TTY" -a $TMUX_AUTO_START_LOCAL -eq 1 \) \)
        tmux start-server

        # create session
        if not tmux has-session 2>/dev/null
            set -l tmux_session 'fish'
            tmux \
                new-session -d -s "$tmux_session" \; \
                set-option -t "$tmux_session" destroy-unattached off >/dev/null 2>&1
        end

        # attach session
        exec tmux $_tmux_iterm_integration attach-session
    end
end
