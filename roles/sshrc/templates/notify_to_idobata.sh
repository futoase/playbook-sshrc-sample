#!/bin/bash

badge="source=<span class='label label-success'>ログインしました</span>"
br="<br/>"
message="<b>$(id -nu) $(date +'%Y-%m-%d %H:%M:%S %Z')</b>"

curl \
  --data-urlencode "$badge$br$message" \
  -d format=html \
  https://idobata.io/hook/{{ hook_id }}
