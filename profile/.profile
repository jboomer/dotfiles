export EDITOR=nvim
export SUDO_EDITOR=$EDITOR
export DIFFPROG="$EDITOR -d"
export MANPAGER="nvim +Man!"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# Set ssh agent socket to socket created by ssh-agent user service
# Do not overwrite if remote login through ssh
if [[ -z "${SSH_CONNECTION}" ]]; then
    export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket
fi

