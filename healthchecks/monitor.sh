#!/bin/sh

# TODO(https://github.com/amirlazarovich/somnius/issues/35): Need to update this logic so that we actually test the monitor

echo "Healthcheck: $REDIS_URL @ $HOSTNAME"
celery -b $REDIS_URL inspect ping
status=$?

if [ $status -eq 0 ]; then
    echo "Healthcheck: $HOSTNAME - PASS"
else
    echo "Healthcheck: $HOSTNAME - FAIL"
fi
 
exit $status