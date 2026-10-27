#! /usr/bin/env bash

deploy()
{
    local f="$1"

    test -z "$f" && return

    test -f "$HOME/$f" && ! test -L "$HOME/$f" && mv "$HOME/$f" "$HOME/${f}_backup_$(date +%Y-%m-%d-%H%M%S).bak"

    mkdir -p "$(dirname "$HOME/$f")"

	ln -frs "$f" "$HOME/$f"
}

package_installed()
{
	dpkg-query -W -f='${Status}' "$1" 2>/dev/null | grep -q "install ok installed"
}

# bashrc
deploy .bashrc
deploy .bash_aliases
touch $HOME/.bash_overrides

# vim
deploy .vimrc

# fastfetch
package_installed fastfetch && deploy .config/fastfetch/config.jsonc

# btop
package_installed btop && deploy .config/btop/btop.conf

source $HOME/.bashrc

