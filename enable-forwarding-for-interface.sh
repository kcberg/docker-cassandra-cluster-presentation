#/bin/bash

iface="br1"

iptables -I FORWARD 1 -i $iface -o $iface -j ACCEPT
iptables -I FORWARD 2 -i $iface ! -o $iface -j ACCEPT
iptables -I FORWARD 3 -o $iface -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
