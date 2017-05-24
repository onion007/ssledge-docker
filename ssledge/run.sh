#!/bin/bash
#/home/andy/tools/ssledge/ssledge-term-x64 -f /home/andy/tools/ssledge/config/http/hybrid.conf -D
#/usr/bin/proxychains /home/andy/tools/ssledge/ssledge-term-x64 -f /home/andy/tools/ssledge/config/http/hybrid.conf -D

DIR=$(dirname $0)
${DIR}/ssledge-term-x64 -f ${DIR}/config/http/hybrid.conf -D
${DIR}/ssledge-term-x64 -f ${DIR}/config/socks/socks-jp2.conf -D
