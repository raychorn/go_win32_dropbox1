#!/bin/bash

export TZ=US/Mountain
if [ -f "/usr/share/zoneinfo/$TZ" ]; then
    echo "/usr/share/zoneinfo/$TZ exists."
else
    ln -s /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
fi

if [ -d "/root/.oh-my-zsh" ]; then
    echo "/root/.oh-my-zsh exists."
else
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi
 
if [ -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
    echo "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k exists."
else
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi
 
golang=$(whereis go)
echo $golang

re='^1$'

tok_count=0
go_path=""
IFS=': '
read -ra ADDR <<< "$golang"
for i in "${ADDR[@]}"; do
    echo "$tok_count :: $i"
    if (( tok_count==1 )) ; then
        go_path="$i"
    fi
    ((tok_count=tok_count+1))
done
echo go_path=$go_path
if [ -d "$go_path" ]; then
    echo "$go_path exists."
else
    echo "$go_path does not exists."
fi
