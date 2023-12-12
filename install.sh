install()
{
    if [[ $1 == "" ]]; then
        return
    else
        if [[ -f ~/${1} ]] && [[ ! -L ~/${1} ]]; then
            mv ~/${1} ~/${1}_backup_$(date +%Y-%m-%d-%H%M%S).bak
        fi
        ln -frs ${1} ~/${1}
    fi
}

install .bashrc
install .bash_aliases

install .vimrc
