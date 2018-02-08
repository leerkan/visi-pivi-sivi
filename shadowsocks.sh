#! /bin/bash -
# auto start ssserver
LC_ALL=C
# BEGIN Tool Functions
#. $(dirname $0)/pffs
# END Tool Functions

ssserver -c /usr/local/bin/shadowsocket.json -d start
