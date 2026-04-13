#!/bin/sh
set -x

/app/scripts/replace-placeholder.sh "http://REPLACE-BACKEND-URL.com" "$NEXT_PUBLIC_BACKEND_URL"
/app/scripts/replace-placeholder.sh "http://REPLACE-APP-URL.com" "$NEXT_PUBLIC_APP_URL"

exec npx serve /app/apps/mail/build/client -l 3000 --single
