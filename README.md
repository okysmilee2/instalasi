## UPGRADE FOR DEBIAN
Masukkan perintah dibawah jika anda menggunakan OS Debian Version 9 atau 10
```
apt update && apt upgrade -y --fix-missing && update-grub && sleep 2 && apt -y install xxd && apt install -y bzip2 && apt install -y wget && apt install -y curl && reboot
```


##  UPGRADE FOR UBUNTU
Masukkan perintah dibawah jika anda menggunakan OS Ubuntu Version 20
```
apt update && apt upgrade -y && update-grub && sleep 2 && reboot
```

## INSTALL SCRIPT 
Masukkan perintah dibawah untuk menginstall Autoscript Premium
```
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt upgrade -y --fix-missing && update-grub && sleep 2 && apt install -y wget && apt install -y curl && apt install haproxy -y && apt install build-essential -y && apt-get install -y jq && apt-get install shc && apt install -y bzip2 gzip coreutils screen curl && wget --no-check-certificate https://daneshswara.serv00.net/setup.sh && chmod +x setup.sh && ./setup.sh
```
# masuk menu
ketik
```
menu
```
# repo

```
wget raw.githubusercontent.com/okysmilee2/repo/main/addrepo && bash addrepo 
```
INDONESIA
```
wget raw.githubusercontent.com/okysmilee2/repo/main/indonesia && bash indonesia
```
# Root

Lalu

```
sudo su
wget https://raw.githubusercontent.com/syntax-err0rr/Root-VPS/main/root.sh && chmod +x root.sh && ./root.sh
```
