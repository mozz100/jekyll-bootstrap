#!/bin/sh
#http-server _site --silent &
ruby -run -e httpd _site -p 8080 > /dev/null 2>&1 &
SERVER_PID=$!

guard --no-interactions

echo "Closing down..."

kill $SERVER_PID