#!/bin/bash
echo "yes" | redis-cli --cluster create ${ADDRD} --cluster-replicas 1
