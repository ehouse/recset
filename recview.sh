#!/usr/local/bin/bash
curl https://www.cloudflare.com/api_json.html \
  -d 'a=rec_load_all' \
  -d 'tkn=581311a1df396973926cbea44a67774dd33cb' \
  -d 'email=ewhhouse@gmail.com' \
  -d 'z='
