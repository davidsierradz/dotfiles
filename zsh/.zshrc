#th to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="solarized-powerline"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir dir_writable ssh vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs background_jobs time)
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M:%S \uf073 %d.%m.%y}"
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
POWERLEVEL9K_MODE='nerdfont-fontconfig'
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='007'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='001'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='007'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='002'
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_TIME_BACKGROUND="blue"
POWERLEVEL9K_TIME_FOREGROUND="white"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#ZSH_POWERLINE_SHOW_OS="false"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(common-aliases dirhistory git vi-mode zsh-autosuggestions zsh-completions zsh-syntax-highlighting)

# User configuration
DEFAULT_USER=neuromante
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### CUSTOM

# custom aliases
#long list
alias ll='ls -lAFh --group-directories-first'
#Clear
alias c='clear'
#Open vim with mimi rc
alias vim='vim -u /home/neuromante/dotfiles/vim/.vimrc-mini'

# want your terminal to support 256 color schemes? I do ...
#export TERM=xterm-256color
export EDITOR="vim -u /home/neuromante/dotfiles/vim/.vimrc-mini"
export USE_EDITOR=$EDITOR
export VISUAL="gvim"
export LC_COLLATE="C"

# dircolors
#eval "$(dircolors ~/.dir_colors)"
eval "$(dircolors /home/neuromante/dotfiles/dir_colors/dircolors.256dark)"

# Use backwards search in vi-mode.
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

bindkey -v

# Ctrl-S to insert sudo in front of command
function prepend-sudo { # Insert "sudo " at the beginning of the line
    if [[ $BUFFER != "sudo "* ]]; then
        BUFFER="sudo $BUFFER"; CURSOR+=5
    fi
}
zle -N prepend-sudo
bindkey -M vicmd '^s' prepend-sudo

# More bindkeys for insert vi-mode.
bindkey -M viins '^P' up-history
bindkey -M viins '^N' down-history
bindkey -M viins "^[[3~" delete-char
bindkey -M viins "^k" kill-line
bindkey -M viins "^b" backward-char
bindkey -M viins "^f" forward-char
bindkey -M viins "^u" kill-whole-line

# Not necessary see man zshzle.
#bindkey '^?' backward-delete-char
#bindkey '^h' backward-delete-char
#bindkey '^w' backward-kill-word
#bindkey '^r' history-incremental-search-backward
#bindkey "^[3;5~" delete-char

#function zle-line-init zle-keymap-select {
#    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
#    zle reset-prompt
#}
#
#zle -N zle-line-init
#zle -N zle-keymap-select

# More responsive toggle from normal to insert mode in vi-mode.
export KEYTIMEOUT=1

# Snippet of code to make vi_mode in zsh theme to work.
# from https://github.com/bhilburn/powerlevel9k/issues/319#issuecomment-250894242
function zle-line-init {
  powerlevel9k_prepare_prompts
  if (( ${+terminfo[smkx]} )); then
    printf '%s' ${terminfo[smkx]}
  fi
  zle reset-prompt
  zle -R
}

function zle-line-finish {
  powerlevel9k_prepare_prompts
  if (( ${+terminfo[rmkx]} )); then
    printf '%s' ${terminfo[rmkx]}
  fi
  zle reset-prompt
  zle -R
}

function zle-keymap-select {
  powerlevel9k_prepare_prompts
  zle reset-prompt
  zle -R
}

zle -N zle-line-init
zle -N ale-line-finish
zle -N zle-keymap-select

# Reload completions.
autoload -U compinit && compinit

# enable completition for hidden files .
_comp_options+=(globdots)

# zsh autosugestions plugin settings

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=1'
ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd

# Press <C-Space> to autocomplete and execute command.
bindkey '^ ' autosuggest-execute
bindkey '^e' forward-word

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
