#!/bin/sh

wget --no-verbose --tries=1 --spider http://localhost:5555/healthcheck || exit 1