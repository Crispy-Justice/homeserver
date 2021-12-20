# Home Server 🏠

![alt text](https://github.com/Crispy-Justice/homeserver/blob/main/banner.png)



## Update the Pi
```
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y --purge && sudo apt autoclean -y
```
♻️Reboot

## Install Other Stuff
```
sudo apt install curl wget speedtest-cli ranger git htop shellinabox tree
```
## Install Zsh
```
sudo apt update &&
sudo apt install zsh &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
♻️Reboot..

📂Install Plugins
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &&
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```


🖨️Copy this to `.zshrc`
   
```
export ZSH="/home/veer/.oh-my-zsh"

ZSH_THEME="lukerandall"

plugins=(git sudo zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias cls='clear'
alias rm='printf "\033[1;31m" && rm -rIv'
alias cp='printf "\033[1;32m" && cp -rv'
alias mv='printf "\033[1;34m" && mv -v'
alias mkdir='printf "\033[1;33m" && mkdir -v'
alias rmdir='printf "\033[1;35m" && rmdir -v'
```
‼️logout and login



## Install Docker & Portainer

🛠️Git repo - [novaspirit](https://github.com/novaspirit)/[pi-hosted](https://github.com/novaspirit/pi-hosted).

📂Install Docker
```
wget -qO- https://git.io/JwUkc | bash
```

♻️Reboot..
📂Install Portainer
```
wget -qO- https://git.io/JwUnf | bash
```
    
🧩Add Portainer Templates
```
https://raw.githubusercontent.com/novaspirit/pi-hosted/master/template/portainer-v2-arm64.json
```

## Install Monitoring Stuff
Full Documentation - [RPI Docker Monitor](https://github.com/novaspirit/pi-hosted/blob/master/docs/rpi_docker_monitor.md)
```
sudo nano /boot/cmdline.txt

#Paste:
systemd.unified_cgroup_hierarchy=0 cgroup_enable=memory cgroup_memory=1

sudo reboot

#Run script:
wget -qO- https://git.io/JPXba | sudo bash
```



## Install WireGuard VPN

🛠️Git repo - [Nyr](https://github.com/Nyr)/**[wireguard-install](https://github.com/Nyr/wireguard-install)**

```
wget https://git.io/wireguard -O wireguard-install.sh && bash wireguard-install.sh
```



