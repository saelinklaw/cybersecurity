/testing/guestbin/swan-prep
cp policies/* /etc/ipsec.d/policies/
echo "192.1.2.23/32"  >> /etc/ipsec.d/policies/private
ipsec start
/testing/pluto/bin/wait-until-pluto-started
# give OE policies time to load
sleep 5
ip -s xfrm monitor > /tmp/xfrm-monitor.out &
echo "initdone"
