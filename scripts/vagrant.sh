mkdir -pm 700 /home/vagrant/.ssh
cp /tmp/authorized_keys /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
