#!/bin/bash
KEY="B654A1BEB57FFCDCF874749C9AF9B"
echo $KEY
REMOTEIP=$(hostname -I|cut -f1 -d ' ')
echo $REMOTEIP
URL="https://olp-license-bucket-2020.s3.ap-south-1.amazonaws.com/${REMOTEIP}/key.txt"
echo $URL
LICENSE_KEY=$(curl "$URL")

if [ -z "$LICENSE_KEY" ]
then
      echo "\$LICENSE_KEY is not valid product key."
      echo "No valid product key." >> OLS.log
else
echo checking condition
        if [ $LICENSE_KEY == $KEY ] ; then
        
        echo "Valid product key found. System starting installation."
        #bash <( curl -k https://olp-license-bucket-2020.s3.ap-south-1.amazonaws.com/olp-install.sh )
        bash <( curl -k https://raw.githubusercontent.com/w3servicesdotnet/OpenLitePanel/master/install.sh )
        else
        
        echo "$LICENSE_KEY is not valid product key."
fi


fi

echo " Installatino done."
