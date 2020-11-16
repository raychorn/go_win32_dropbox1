#!/bin/bash

export TZ=US/Mountain
if [ -f "/usr/share/zoneinfo/$TZ" ]; then
    echo "/usr/share/zoneinfo/$TZ exits."
else
    ln -s /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
fi

if [ -d "/root/.oh-my-zsh" ]; then
    echo "/root/.oh-my-zsh exits."
else
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi
 
if [ -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
    echo "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k exits."
else
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi
 
