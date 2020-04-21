# Define short code
GITRAW=https://raw.githubusercontent.com/tujuhion/openlitespeed-centos-autoinstall/master
LSWSDIR=/usr/local/lsws

mkdir /scripts
wget –quiet -O /scripts/lscreate $GITRAW/scripts/lscreate
wget –quiet -O /scripts/lsremove $GITRAW/scripts/lsremove
wget –quiet -O /scripts/certbot $GITRAW/scripts/certbot
wget –quiet -O /scripts/createdb $GITRAW/scripts/createdb
wget –quiet -O /usr/bin/lsws $GITRAW/scripts/lsws

chmod +x /usr/bin/lsws
chmod +x /scripts/*
