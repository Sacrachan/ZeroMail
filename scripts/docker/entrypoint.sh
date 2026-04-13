#!/bin/sh
set -x

/app/scripts/replace-placeholder.sh "http://REPLACE-BACKEND-URL.com" "$NEXT_PUBLIC_BACKEND_URL"
/app/scripts/replace-placeholder.sh "http://REPLACE-APP-URL.com" "$NEXT_PUBLIC_APP_URL"

exec npm --prefix /app/apps/mail run start
