# OS detection
if [[ `uname` == 'Darwin' ]]; then
    CURRENT_OS='OS X'
else
    # Must be Linux, determine distro
    if [[ -f /etc/redhat-release ]]; then
        # CentOS or Redhat?
        if grep -q "CentOS" /etc/redhat-release; then
            DISTRO='CentOS'
        else
            DISTRO='RHEL'
        fi
    elif [[ -f /etc/debian_version ]]; then
        DISTRO='debian'
    fi
fi

source ~/antigen.zsh
source ~/dotfiles/zsh/antigen-bundle.zsh
source ~/dotfiles/zsh/keybinds.zsh
source ~/local.zsh
