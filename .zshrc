export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

export PATH="/bin:/Users/j/scripts:/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}:/Users/j/Library/Application Support/JetBrains/Toolbox/scripts";
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

source $ZSH/oh-my-zsh.sh

PROMPT='%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %(!.#.>) '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

export ZSH_AUTOSUGGESTION_HIGHLIGH_STYLE="fg=#666666"
export ZSH_AUTOSUGGESTION_STRATEGY=(history completion)

export ANDROID_HOME="/Users/j/Library/Android/sdk"

autoload -U +X bashcompinit && bashcompinit

# kubectl autocompletion
source <(kubectl completion zsh)

