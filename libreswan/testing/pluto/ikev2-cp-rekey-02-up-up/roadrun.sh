ipsec auto --up eastnet-any
ping -n -c 4 -I 100.64.13.2 192.0.2.254
ipsec whack --trafficstatus
# not using: ipsec whack --rekey-ipsec --name eastnet-any
ipsec auto --up eastnet-any
ping -n -c 4 -I 100.64.13.2 192.0.2.254
ipsec whack --trafficstatus
echo done
