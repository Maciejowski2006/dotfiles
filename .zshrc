# Set defaults
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

alias zshedit="nvim ~/.zshrc"
alias i3edit="nvim ~/.i3/config"
alias polybaredit="nvim ~/.config/polybar/config"
alias nvimedit="nvim ~/.config/nvim/init.vim"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# FFF Settings
export FFF_HIDDEN = 1
export FFF_FAV1=/
export FFF_FAV2=~
export FFF_FAV3=~/sites

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
