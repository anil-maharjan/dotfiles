# Setup fzf
# ---------
if [[ ! "$PATH" == */home/anil/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/anil/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/anil/.fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/home/anil/.fzf/shell/key-bindings.zsh"
