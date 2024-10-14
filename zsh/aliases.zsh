alias ls='eza -l --color=always --group-directories-first --icons' # my preferred listing
alias la='eza -al --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias lt1='eza -aT --color=always --group-directories-first --icons --level=1'
alias l.='eza -a | egrep "^\."'


alias ez="$EDITOR ~/.zshrc"
alias sz="source ~/.zshrc"     
alias ea="$EDITOR $ZSH_DIR/aliases.zsh"
alias ev="$EDITOR ~/.vimrc"
alias es="$EDITOR $ZSH_DIR/scripts.zsh"
#alias {vim,nvim}="$EDITOR"

alias v="vim"
alias v.="vim ."
alias e="exit"
alias cz="cd ~/.config/zsh"
alias doc="cd ~/Documents"
alias down="cd ~/Downloads"

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias ..="cd .."
alias {..2,...}="cd ../.."
alias {..3,....}="cd ../../.."
alias {..4,.....}="cd ../../../.."
alias {..5,......}="cd ../../../../.."
alias ~="cd ~"
alias home="~"

alias bi="brew install"
alias bs="brew search"

alias nt="open -a iterm ."
alias nw="open -a iterm -n $HOME"

alias lect="source ~/uni.sh"
alias l="source ~/uni.sh"

#alias skim="/Applications/Skim.app/Contents/MacOS/Skim"
alias skim="open -a Skim.app"

alias cat=bat

alias today="calcurse -a"

alias c="clear"

alias macfag="find . -name '.DS_Store' -print -delete"

alias botany="python3 $HOME/nerd-shit/botany/botany.py"

alias ranger="yazi"

alias mdl="yt-dlp -x --audio-format mp3 --audio-quality -"

dir() { mkdir "$@" && cd "$@" }

apt-get() {brew formulae | fzf --query=$1 -m --preview 'brew info {1}' | xargs -ro brew install}
