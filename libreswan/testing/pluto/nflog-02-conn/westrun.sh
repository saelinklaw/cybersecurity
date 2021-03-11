iptables -L -n
ipsec auto --up westnet-eastnet-ikev2
iptables -L -n
rm -fr /tmp/nflog-50.pcap
rm -fr /tmp/nflog-50.log
(tcpdump -c 8 -s 0 -w /tmp/nflog-50.pcap -i nflog:50 > /dev/null 2>&1 &)
ping -n -c 5 -I 192.0.1.254 192.0.2.254
ipsec auto --down westnet-eastnet-ikev2
iptables -L -n
cp /tmp/nflog-50.pcap OUTPUT/nflog-50.pcap
tcpdump -n -r /tmp/nflog-50.pcap 2>/dev/null
echo done
