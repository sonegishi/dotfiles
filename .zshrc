#######################################
# Alias

alias be="bundle exec"
alias g="git"
alias pythonserver='python -m SimpleHTTPServer'
alias br='bin/rails'
alias dc='docker-compose'

alias la='ls -a'
alias ll='ls -l'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias gcp='ssh cayenne@35.200.83.82 -i ~/.ssh/id_rsa_cayenne_dev'

# Global Alias
alias -g L='| less'
alias -g G='| grep'

########################################
# Environmental Variables

# Enable coloring
autoload -Uz colors
colors

# Path
## rbenv
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

## goenv
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
eval "$(goenv init -)"

## pyenv
eval "$(pyenv init -)"

## nodebrew
export PATH=$PATH:/Users/negishi.so/.nodebrew/current/bin

## others
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"

# History Setting
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# Prompt
PROMPT='%{$fg[blue]%}.-%{${reset_color}%}%{${fg[cyan]}%}[%T]%{${reset_color}%} %{$fg[blue]%}%n@%m%{${reset_color}%}:%~ ${vcs_info_msg_0_}
%{$fg[blue]%}\`-%{${reset_color}%}%# '

# Complement processing name for ps command
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

# Indicate a punctuation symbol for words
autoload -Uz select-word-style
select-word-style default
# Presume following characters as a word pause
# / is also counted as a pause so ^W can delete a directory
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

# Complement matching either a lower case letter or a capital letter
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Don't complement the current directory after ../
zstyle ':completion:*' ignore-parents parent pwd ..

# Complement a command name after sudo
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin


# Complement processing name for ps command
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'


########################################
# vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '%F{magenta}(%b)%f'
zstyle ':vcs_info:*' actionformats '%F{magenta}(%b|%a)%f'
setopt prompt_subst
precmd() { vcs_info }


########################################
# Options

# Use '#' as a beginning of a comment
setopt interactive_comments


########################################
# Setting based on an OS
case ${OSTYPE} in
  darwin*)
    # Setting for macOS
    export CLICOLOR=1
    alias ls='ls -G -F'

    ########################################
    # Complement Setting
    # Enable complementing function
    fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
    autoload -Uz compinit
    compinit

    # terminal-notifier
    #autoload -U add-zsh-hook
    #export SYS_NOTIFIER="/usr/local/bin/terminal-notifier"
    #source ~/.zsh.d/zsh-notify/notify.plugin.zsh
    #export NOTIFY_COMMAND_COMPLETE_TIMEOUT=10

    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
    ;;

  linux*)
    # Setting for LinuxOS
    ;;
esac

