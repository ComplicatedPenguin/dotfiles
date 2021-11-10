export PATH="/home/complicated_penguin/.local/bin:$PATH"
export PATH="$PATH:$HOME/builds/depot_tools"
colorscript -e bars 
pfetch
colorscript -e bars

alias clear="clear && colorscript -e bars && pfetch && colorscript -e bars" 
alias ls="ls --color=auto"
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias sudo='doas'
alias vim="nvim"
alias mpv="mpv --vo=gpu --hwdec=auto --gpu-context=wayland"

PS1="
\[\033[34m\]\W
\[\033[36m\]  \[\033[32m\]勞 \[\033[37m\]"

##[ -f ~/.fzf.bash ] && source ~/.fzf.bash
