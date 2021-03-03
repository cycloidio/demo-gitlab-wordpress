#!/bin/sh

set -e
set -x

export COMMIT=${COMMIT:-origin/master}

set +e
sed "s/@PROJECT@/$PROJECT/; s/@ENV@/$ENV/; s!@COMMIT@!$COMMIT!" -i /usr/share/nginx/*.php /usr/share/nginx/*.html
set -e

exec nginx -g "daemon off;"
