#!/bin/bash
sudo ip link delete dev tun1
sudo openvpn --mktun --dev tun1
sudo ifconfig tun1 up
echo 'password' | sudo openconnect --juniper global.remoteaccess.dxc.technology --interface=tun1 --passwd-on-stdin -u username
