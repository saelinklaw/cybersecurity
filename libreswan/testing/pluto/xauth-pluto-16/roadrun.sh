ipsec whack --xauthname 'use3' --xauthpass 'use1pass' --name modecfg-road-east --initiate
ping -n -c 4 192.0.2.254
ipsec whack --trafficstatus
echo done
