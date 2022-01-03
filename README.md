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

## Install RPI Docker Monitor
📄Full Documentation - [RPI Docker Monitor](https://github.com/novaspirit/pi-hosted/blob/master/docs/rpi_docker_monitor.md)
```
sudo nano /boot/cmdline.txt

#Paste:
systemd.unified_cgroup_hierarchy=0 cgroup_enable=memory cgroup_memory=1

sudo reboot

#Run script:
wget -qO- https://git.io/JPXba | sudo bash
```
ID - `15120`
🖨️Copy this [JSON](https://github.com/oijkn/Docker-Raspberry-PI-Monitoring/blob/main/grafana/dashboard_by_oijkn.json) in Grafana



## Install Temp Monitoring Scripts

```
#Telegram script
sudo wget https://raw.githubusercontent.com/Crispy-Justice/homeserver/main/resources/telegram -P /usr/bin/

#Temp script
sudo wget https://raw.githubusercontent.com/Crispy-Justice/homeserver/main/resources/temp_mon -P /usr/bin/

#Edit permissions
sudo chmod +x /usr/bin/temp_mon && sudo chmod +x /usr/bin/telegram

#Edit crontab
crontab -e

#Paste:

# Checks CPU temperature every 10 minutes and sends mail if it exceeds a threshold
*/10 * * * * sudo bash /usr/local/bin/temp_mon

#Restart crontab
sudo service cron reload

```



## Install Tailscale
```
curl -fsSL https://tailscale.com/install.sh | sh
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



