#! /bin/bash

test -x "$HOME/miniconda3/bin/conda" && echo "Miniconda already exists" && exit 0

! dpkg-query -W -f='${Status}' wget 2>/dev/null | grep -q "install ok installed" && \
sudo apt update > /dev/null 2>&1 && sudo apt install -y wget > /dev/null 2>&1

py=$(mktemp -d) && wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O "$py/miniconda.sh" \
   && bash "$py/miniconda.sh" -b -p "$HOME/miniconda3"; rm -rf "$py"; "$HOME/miniconda3/bin/conda" shell.bash hook > "$HOME/.bash_overrides"

