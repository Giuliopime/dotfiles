export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

export PATH="/bin:/Users/j/scripts:/Users/j/dev/flutter/bin:/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}:/Users/j/Library/Application Support/JetBrains/Toolbox/scripts";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# gpg
export GPG_TTY=$(tty) 

export KUBECONFIG=~/.kube/config

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/j/dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/j/dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/j/dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/j/dev/google-cloud-sdk/completion.zsh.inc'; fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="geoffgarside"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"


# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	z
	zsh-autosuggestions
	zsh-syntax-highlighting
)

alias vim=nvim
alias vi="nvim ."

source $ZSH/oh-my-zsh.sh

PROMPT='%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %(!.#.>) '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

export ZSH_AUTOSUGGESTION_HIGHLIGH_STYLE="fg=#666666"
export ZSH_AUTOSUGGESTION_STRATEGY=(history completion)

export ANDROID_HOME="/Users/j/Library/Android/sdk"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# pnpm
export PNPM_HOME="/Users/j/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
