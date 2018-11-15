#th to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh

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
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs background_jobs)
#POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M:%S \uf073 %d.%m.%y}"
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=15
POWERLEVEL9K_VCS_SHORTEN_LENGTH=15
POWERLEVEL9K_MODE='nerdfont-fontconfig'
POWERLEVEL9K_VI_INSERT_MODE_STRING=""
#POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='007'
#POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='001'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='007'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='002'
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
#POWERLEVEL9K_TIME_BACKGROUND="blue"
#POWERLEVEL9K_TIME_FOREGROUND="white"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#ZSH_POWERLINE_SHOW_OS="false"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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
plugins=(common-aliases docker docker-compose git vi-mode yarn zsh-autopair zsh-autosuggestions zsh-completions zsh-syntax-highlighting)

# User configuration
DEFAULT_USER=neuromante
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

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

# Python JSON prettier
alias -g J='| python -m json.tool'

#Open vim with mimi rc
#alias vim='vim -u /home/neuromante/dotfiles/vim/.vimrc-mini'

# want your terminal to support 256 color schemes? I do ...
#export TERM=xterm-256color
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL="nvim-gtk"
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
export KEYTIMEOUT=25

# Reload completions.
autoload -U compinit && compinit

# enable completition for hidden files .
_comp_options+=(globdots)

# zsh autosugestions plugin settings

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=1'
ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd

# Remove forward-char widgets from ACCEPT
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#forward-char}")
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#vi-forward-char}")

# Add forward-char widgets to PARTIAL_ACCEPT
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+=(forward-char)
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+=(vi-forward-char)

# Press <C-Space> to autocomplete and execute command.
bindkey '^ ' autosuggest-execute
bindkey '^q' forward-word

# go - cd into the directory of the selected file
go() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}

# fa - including hidden directories
fa() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

is_in_git_repo() {
    git rev-parse HEAD > /dev/null 2>&1
}

fzf-down() {
    fzf --height 80% "$@" --border
}

unalias gf
gf() {
    is_in_git_repo || return
    git -c color.status=always status --short |
        fzf-down -m --ansi --nth 2..,.. \
        --preview '(git diff --color=always -- {-1} | sed 1,4d; cat {-1}) | head -500' |
        cut -c4- | sed 's/.* -> //'
}

unalias gb
gb() {
    is_in_git_repo || return
    git branch -a --color=always | grep -v '/HEAD\s' | sort |
        fzf-down --ansi --multi --tac --preview-window right:70% \
        --preview 'git log --oneline --graph --date=short --pretty="format:%C(auto)%cd %h%d %s" $(sed s/^..// <<< {} | cut -d" " -f1) | head -'$LINES |
        sed 's/^..//' | cut -d' ' -f1 |
        sed 's#^remotes/##'
}

gt() {
    is_in_git_repo || return
    git tag --sort -version:refname |
        fzf-down --multi --preview-window right:70% \
        --preview 'git show --color=always {} | head -'$LINES
}

gh() {
    is_in_git_repo || return
    git log --date=short --format="%C(green)%C(bold)%cd %C(auto)%h%d %s (%an)" --graph --color=always |
        fzf-down --ansi --no-sort --reverse --multi --bind 'ctrl-s:toggle-sort' \
        --header 'Press CTRL-S to toggle sort' \
        --preview 'grep -o "[a-f0-9]\{7,\}" <<< {} | xargs git show --color=always | head -'$LINES |
        grep -o "[a-f0-9]\{7,\}"
}

unalias gr
gr() {
    is_in_git_repo || return
    git remote -v | awk '{print $1 "\t" $2}' | uniq |
        fzf-down --tac \
        --preview 'git log --oneline --graph --date=short --pretty="format:%C(auto)%cd %h%d %s" {1} | head -200' |
        cut -d$'\t' -f1
}

join-lines() {
  local item
  while read item; do
    echo -n "${(q)item} "
  done
}

bind-git-helper() {
  local char
  for c in $@; do
    eval "fzf-g$c-widget() { local result=\$(g$c | join-lines); zle reset-prompt; LBUFFER+=\$result }"
    eval "zle -N fzf-g$c-widget"
    #eval "bindkey '\\e^$c' fzf-g$c-widget"
  done
}

bind-git-helper f b t r h
unset -f bind-git-helper
bindkey '\ef' fzf-gf-widget
bindkey '\eb' fzf-gb-widget
bindkey '\et' fzf-gt-widget
bindkey '\er' fzf-gr-widget
bindkey '\eh' fzf-gh-widget

# Use C-y to open history and run the command.
fzf-history-widget-accept() {
  fzf-history-widget
  zle accept-line
}

zle     -N   fzf-history-widget-accept
bindkey '^y' fzf-history-widget-accept

# fzf + ag configuration
#export FZF_DEFAULT_COMMAND='ag -il --nocolor --nogroup --path-to-ignore ~/.agignore --skip-vcs-ignores --hidden -g ""'
#export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"

# ALT-D - Paste the selected directory path into the command line
__fseldir() {
    local cmd="command find -L . -mindepth 1 \\( -path '*/\\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
        -o -type d -print 2> /dev/null | cut -b3-"
    setopt localoptions pipefail 2> /dev/null
    eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_ALT_C_OPTS" $(__fzfcmd) -m "$@" | while read item; do
    echo -n "${(q)item} "
done
local ret=$?
echo
}

fzf-dirr-widget() {
LBUFFER="${LBUFFER}$(__fseldir)"
local ret=$?
zle reset-prompt
return $ret
}

zle     -N   fzf-dirr-widget
bindkey '\ed' fzf-dirr-widget

[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# Vim Surround see: https://github.com/zsh-users/zsh/blob/master/Functions/Zle/surround
autoload -Uz surround
zle -N delete-surround surround
zle -N add-surround surround
zle -N change-surround surround
bindkey -a cs change-surround
bindkey -a ds delete-surround
bindkey -a ys add-surround
bindkey -M visual S add-surround

autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
    for c in {a,i}{\',\",\`}; do
        bindkey -M $m $c select-quoted
    done
done

autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
   for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
       bindkey -M $m $c select-bracketed
   done
done
