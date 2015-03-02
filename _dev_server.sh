#!/bin/sh

# Start super basic static web server in _site
ruby -run -e httpd _site_dev -p 8080 > /dev/null 2>&1 &
SERVER_PID=$!

# Run guard, using polling if we are in a docker container
if [ "$FIGGY" = "pudding" ]; then
  guard --no-interactions --force-polling
else
  guard --no-interactions
fi

echo "Closing down..."

kill $SERVER_PID
