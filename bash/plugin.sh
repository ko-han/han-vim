# bash completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion >/dev/null 2>&1
    elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion >/dev/null 2>&1
    elif [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion >/dev/null 2>&1
    elif [ -f ~/".bash_completion" ]; then
    . ~/.bash_completion >/dev/null 2>&1
fi

download-git-completion() {
    curl -fsSLo ~/".git_completion" https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
}

download-z() {
    curl -fsSLo ~/".z.sh" https://raw.githubusercontent.com/rupa/z/master/z.sh
}

download-bash-completion() {
    curl -fsSLo ~/".bash_completion" https://raw.githubusercontent.com/scop/bash-completion/master/bash_completion
}

[ -f ~/.z.sh ] && source ~/.z.sh >/dev/null 2>&1

[ -f ~/.git_completion ] && . ~/.git_completion >/dev/null 2>&1

[ -f ~/.fzf.bash ] && source ~/.fzf.bash >/dev/null 2>&1

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh >/dev/null 2>&1
