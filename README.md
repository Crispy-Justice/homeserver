# Home Server 🏠

![alt text](https://github.com/Crispy-Justice/homeserver/blob/main/banner.png)



## Update the Pi
```
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y --purge && sudo apt autoclean -y && sudo reboot
```

## Install Other Stuff
```
sudo apt install -y curl wget speedtest-cli ranger git htop exa bc net-tools
```
## Bash

🖨️Copy these aliases to `.bashrc`

```
alias ls='exa -F'
alias la='exa -a'
alias ll='exa -lah'

alias cls='clear'
alias rm='rm -rIv'
alias cp='cp -rv'
alias mv='mv -v'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'

alias hdd-mount='sudo mount -t ext4 /dev/sda1 /hdd'
alias hdd-unmount='sudo udisksctl unmount -b /dev/sda1'
alias hdd-poweroff='sudo udisksctl power-off -b /dev/sda'

alias disks='lsblk'

alias ping='ping -c 5'
alias ports='netstat -tulanp'
alias ipi="ip -o route get to 8.8.8.8 | sed -n 's/.*src \([0-9.]\+\).*/\1/p'"
alias ipe='curl ifconfig.co'

alias update='sudo apt update'
alias upgrade='sudo apt update && sudo apt upgrade'

alias reboot='sudo reboot'
alias shutdown='sudo shutdown now'
```
‼️logout and login



## Install Docker & Portainer

🛠️Git repo - [novaspirit](https://github.com/novaspirit)/[pi-hosted](https://github.com/novaspirit/pi-hosted).

📂Install Docker
```
wget -qO- https://git.io/JwUkc | bash && sudo reboot
```

📂Install Portainer
```
wget -qO- https://git.io/JwUnf | bash
```
    
🧩Add Portainer Templates
```
https://raw.githubusercontent.com/novaspirit/pi-hosted/master/template/portainer-v2-arm64.json
```

## Install Tailscale
```
curl -fsSL https://tailscale.com/install.sh | sh

sudo systemctl enable --now tailscaled
```

## Setup FTP

```
sudo apt install vsftpd

sudo nano /etc/vsftpd.conf

anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
chroot_local_user=YES
allow_writeable_chroot=YES
user_sub_token=$USER
local_root=/home/$USER/ftp

mkdir -p /home/dietpi/ftp/files

chmod -R 777 /home/dietpi/ftp

sudo service vsftpd restart


```

## Add to `/etc/fstab`
```
PARTUUID=002f32b3-e518-4bd5-838d-5e13fe9f0449 /hdd ext4 defaults 0 2
```



## Overclock

🏎Level 1
```
sudo nano /boot/config.txt

Edit:
temp_limit=70
over_voltage=6
arm_freq=2147
gpu_freq=750
```

🏎🏎Level 2
```
sudo nano /boot/config.txt

Edit:
temp_limit=70
over_voltage=8
arm_freq=2275
gpu_freq=750
```



