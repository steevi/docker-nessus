#!/bin/bash

FILENAME="/opt/nessus/sbin/nessus-service"

if [ ! -f $FILENAME ]; then
    echo "Nessus isn't installed. Installing in 5 seconds"
    echo "Sleep 5"
    dpkg -i /tmp/nessus.deb
    rm /tmp/nessus.deb
fi

bash -c $FILENAME