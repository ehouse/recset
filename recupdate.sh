#!/usr/local/bin/bash
RECORDNAME=""
IPFILE="/var/tmp/$RECORDNAME.addr"
CIPD=$(curl ipecho.net/plain 2>/dev/null)
OIPD=$(<$IPFILE)

if [ "$CIPD" != "$OIPD" ]
then
curl https://www.cloudflare.com/api_json.html \
  -d 'a=rec_edit' \
  -d 'tkn=' \
  -d 'id=' \
  -d 'email=' \
  -d "z=$RECORDNAME" \
  -d 'type=A' \
  -d 'name=' \
  -d "content=$CIPD" \
  -d 'service_mode=0' \
  -d 'ttl=1'
    echo "$CIPD" > "$IPFILE"
fi
