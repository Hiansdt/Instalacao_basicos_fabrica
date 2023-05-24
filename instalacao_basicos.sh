#!/bin/sh
sudo pacman -Syu
sudo pacman -S git
sudo pacman -S yay
yay -S visual-studio-code-bin
sudo pacman -S python
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install --lts
curl -sSL https://raw.githubusercontent.com/pdm-project/pdm/main/install-pdm.py | python3 -
pdm completion bash > /etc/bash_completion.d/pdm.bash-completion
