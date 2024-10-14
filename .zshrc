export EDITOR='vim'

export PATH="/opt/homebrew/anaconda3/bin:$PATH"

# Download Znap, if it's not there yet.
[[ -r ~/.config/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.config/znap
source ~/.config/znap/znap.zsh  # Start Znap

export ZSH_DIR='/Users/yui/.config/zsh'

source $ZSH_DIR/aliases.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

znap eval jump 'jump shell'

znap eval starship 'starship init zsh'

source $ZSH_DIR/plugins.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

znap eval thefuck 'thefuck --alias'

znap eval zoxide 'zoxide init zsh --cmd cd'

calcurse -a

#setopt PROMPT_SUBST

YAZI_TERM=""
if [ -n "$YAZI_LEVEL" ]; then
        export RPROMPT="  Yazi terminal"
fi
