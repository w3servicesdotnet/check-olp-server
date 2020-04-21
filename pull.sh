# Define short code
GITRAW=https://raw.githubusercontent.com/tujuhion/openlitespeed-centos-autoinstall/master
LSWSDIR=/usr/local/lsws

mkdir /scripts
wget -O /scripts/lscreate $GITRAW/scripts/lscreate
wget -O /scripts/lsremove $GITRAW/scripts/lsremove
wget -O /scripts/certbot $GITRAW/scripts/certbot
wget -O /scripts/createdb $GITRAW/scripts/createdb
wget -O /usr/bin/lsws $GITRAW/scripts/lsws

chmod +x /usr/bin/lsws
chmod +x /scripts/*
