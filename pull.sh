# Define short code
GITRAW=https://raw.githubusercontent.com/tujuhion/openlitespeed-centos-autoinstall/master
LSWSDIR=/usr/local/lsws

mkdir /scripts
wget -q -O /scripts/lscreate $GITRAW/scripts/lscreate
wget -q -O /scripts/lsremove $GITRAW/scripts/lsremove
wget -q -O /scripts/certbot $GITRAW/scripts/certbot
wget -q -O /scripts/createdb $GITRAW/scripts/createdb
wget -q -O /usr/bin/lsws $GITRAW/scripts/lsws

chmod +x /usr/bin/lsws
chmod +x /scripts/*
