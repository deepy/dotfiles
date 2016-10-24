antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle robbyrussell/oh-my-zsh plugins/git
antigen bundle robbyrussell/oh-my-zsh plugins/autojump
antigen bundle robbyrussell/oh-my-zsh plugins/tmux
antigen bundle robbyrussell/oh-my-zsh plugins/zsh-syntax-highlighting
antigen theme robbyrussell/oh-my-zsh themes/gallifrey

antigen bundle common-aliases

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle osx
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    antigen bundle cygwin
fi

antigen apply
