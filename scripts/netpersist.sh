NIC=`nmcli device show | head -n 1 | awk -F " " '{ print $NF }'`
systemctl stop NetworkManager
systemctl disable NetworkManager
ln -f -s /dev/null /etc/udev/rules.d/70-persistent-net.rules
sed -i "/^HWADDR/d" /etc/sysconfig/network-scripts/ifcfg-${NIC}
sed -i "/^UUID/d" /etc/sysconfig/network-scripts/ifcfg-${NIC}
