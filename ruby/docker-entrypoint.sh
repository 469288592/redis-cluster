#!/bin/bash
#echo "yes" | ruby /usr/local/bin/redis-trib.rb create --replicas 1 192.168.100.2:6380 192.168.100.3:6381 192.168.100.4:6382 192.168.100.5:6383 192.168.100.6:6384 192.168.100.7:6385
#echo "yes" | redis-cli --cluster create 192.168.100.2:6380 192.168.100.3:6381 192.168.100.4:6382 192.168.100.5:6383 192.168.100.6:6384 192.168.100.7:6385 --cluster-replicas 1
echo "yes" | redis-cli --cluster create ${ADDRD} --cluster-replicas 1
