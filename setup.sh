#!/bin/bash
apt-get update && apt-get install -y ssh openconnect openvpn squid
git clone https://github.com/caroldomokos/bionic
chmod +x bionic/global.sh
mv /etc/squid/squid.conf /etc/squid/squid.conf.old
cp bionic/squid.conf /etc/squid.conf
service squid stop && service squid start
