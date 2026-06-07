export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

export PATH="/bin:/Users/j/.config/scripts:/Users/j/scripts:/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}:/Users/j/Library/Application Support/JetBrains/Toolbox/scripts";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="geoffgarside"

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	z
	zsh-autosuggestions
	zsh-syntax-highlighting
)

alias vim=nvim
alias vi="nvim ."
alias timeout=gtimeout

alias ga="git add ."
alias gc="git commit -m "
alias gp="git push"

alias tf="terraform"

source $ZSH/oh-my-zsh.sh

PROMPT='%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %(!.#.>) '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

export ZSH_AUTOSUGGESTION_HIGHLIGH_STYLE="fg=#666666"
export ZSH_AUTOSUGGESTION_STRATEGY=(history completion)

export ANDROID_HOME="/Users/j/Library/Android/sdk"

autoload -U +X bashcompinit && bashcompinit

# kubectl configs & autocompletion
alias k=kubectl
# export KUBECONFIG="${HOME}/.kube/astro-config:${HOME}/.kube/gport-config"
export KUBECONFIG="${HOME}/.kube/kubeconfig"
source <(kubectl completion zsh)


# The next line updates PATH for the Google Cloud SDK.
#
if [ -f '/Users/j/Developer/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/j/Developer/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/j/Developer/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/j/Developer/google-cloud-sdk/completion.zsh.inc'; fi


# . "$HOME/.local/bin/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init - zsh)"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"
