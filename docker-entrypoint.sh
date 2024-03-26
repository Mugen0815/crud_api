#!/bin/sh
set -e

############################
# run app                  #
############################

# run migrations
echo "Running migrations"
python manage.py migrate --noinput

# run app
echo "Running app"
exec "$@"
```