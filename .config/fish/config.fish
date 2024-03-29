if status is-interactive
    # Commands to run in interactive sessions can go here

    fundle plugin edc/bass

    fundle init

    starship init fish | source

    # config.fish
    if not pgrep -f ssh-agent >/dev/null
        eval (ssh-agent -c)
        set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
        set -Ux SSH_AGENT_PID $SSH_AGENT_PID
        set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
    end

    atuin init --disable-up-arrow fish | source

end
