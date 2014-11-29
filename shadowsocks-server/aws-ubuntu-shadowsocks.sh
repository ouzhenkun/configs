#!/bin/bash

sudo -i

apt-get update
apt-get install python-gevent
apt-get install python-m2crypto
apt-get install python-pip
pip install shadowsocks

echo -en '#!/bin/bash -e\n/usr/local/bin/ssserver -c /etc/shadowsocks.json\nexit 0' > /etc/rc.local
nohup ssserver -c /etc/shadowsocks.json > log &
