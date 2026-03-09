#!/bin/sh
if [ -n "$HTML_B64" ]; then
  echo "$HTML_B64" | base64 -d > /usr/share/nginx/html/index.html
fi
exec nginx -g 'daemon off;'
