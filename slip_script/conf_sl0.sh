#!/bin/bash

sleep 5

ifconfig sl0 $1 pointopoint $2 up &

route add default gw $1 &
