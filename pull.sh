# Define short code
GITRAW=https://raw.githubusercontent.com/tujuhion/openlitespeed-centos-autoinstall/master
LSWSDIR=/usr/local/lsws

mkdir -p /scripts
wget -q -O /scripts/lscreate $GITRAW/scripts/lscreate
wget -q -O /scripts/lsremove $GITRAW/scripts/lsremove
wget -q -O /scripts/certbot $GITRAW/scripts/certbot
wget -q -O /scripts/createdb $GITRAW/scripts/createdb
wget -q -O /usr/bin/lsws $GITRAW/scripts/lsws

sed -n -i -e 's/\r$//' /scripts/*
sed -n -e 's/^M$//' /scripts/*

chmod +x /usr/bin/lsws
chmod +x /scripts/*
