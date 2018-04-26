yum -y clean all
rm -fr /tmp/*
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
