#!/bin/sh
redis-cli KEYS 'daq_service:*' | xargs redis-cli DEL
#redis-cli -u redis://127.0.0.1:6379 flushall
#redis-cli -u redis://127.0.0.1:6379/0 flushdb
#redis-cli -u redis://127.0.0.1:6379/1 flushdb
#redis-cli -u redis://127.0.0.1:6379/2 flushdb
