#!/usr/local/bin/bash
CIPD=$(curl ipecho.net/plain 2>/dev/null)
OIPD=$(<ip.addr)

if [ "$CIPD" != "$OIPD" ]
then
curl https://www.cloudflare.com/api_json.html \
  -d 'a=rec_edit' \
  -d 'tkn=' \
  -d 'id=' \
  -d 'email=' \
  -d 'z=' \
  -d 'type=' \
  -d 'name=' \
  -d "content=$CIPD" \
  -d 'service_mode=0' \
  -d 'ttl=1'
    echo "$CIPD" > ip.addr
fi
