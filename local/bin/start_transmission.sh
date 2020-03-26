#!/bin/sh

RUN_USER_NAME=${RUN_USER_NAME:-forumi0721}

exec su-exec ${RUN_USER_NAME} /usr/bin/transmission-daemon -f -g /conf.d/transmission-daemon

