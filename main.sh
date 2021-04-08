#!/bin/sh

# Source: https://github.com/dodona-edu/docker-images/blob/master/main.sh

# kill all child processes on exit
trap "pkill -P $$" EXIT

"$1"


