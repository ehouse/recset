#!/usr/local/bin/bash
curl https://www.cloudflare.com/api_json.html \
  -d 'a=rec_load_all' \
  -d 'tkn=' \
  -d 'email=' \
  -d 'z='
