/testing/guestbin/swan-prep
checkmodule -M -m -o ipsec-test-module.mod ipsec-test-module.te
semodule_package -o ipsec-test-module.pp -m ipsec-test-module.mod
semodule -i ipsec-test-module.pp > /dev/null 2>/dev/null
rm -f ipsec-test-module.mod ipsec-test-module.pp
setsebool domain_can_mmap_files=1
setsebool nis_enabled=1
#ipsec start
runcon system_u:system_r:ipsec_t:s0 ipsec pluto --config /etc/ipsec.conf
/testing/pluto/bin/wait-until-pluto-started
ipsec auto --add labeled
echo "initdone"
