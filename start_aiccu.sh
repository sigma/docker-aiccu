#!/bin/bash

CONF=/etc/aiccu.conf

if [ -n "$AICCU_USERNAME" ]; then
    echo "username $AICCU_USERNAME" >> $CONF
fi

if [ -n "$AICCU_PASSWORD" ]; then
    echo "password $AICCU_PASSWORD" >> $CONF
fi

if [ -n "$AICCU_TUNNEL" ]; then
    echo "tunnel_id $AICCU_TUNNEL" >> $CONF
fi

echo "daemonize false" >> $CONF

/usr/sbin/aiccu start
