EDITOR=nvim
SUDO_EDITOR=$EDITOR
DIFFPROG="$EDITOR -d"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Set ssh agent socket to socket created by ssh-agent user service
# Do not overwrite if remote login through ssh
if [[ -z "${SSH_CONNECTION}" ]]; then
    export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket
fi

