FROM nginx:alpine
RUN printf '#!/bin/sh\nif [ -n "$HTML_B64" ]; then echo "$HTML_B64" | base64 -d > /usr/share/nginx/html/index.html; fi\nexec nginx -g "daemon off;"\n' > /entrypoint.sh && chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
