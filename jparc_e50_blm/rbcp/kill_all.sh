#!/bin/bash

kill `ps aux | grep scaler_slowdashify.sh | grep -v grep | awk '{print $2}'`
kill `ps aux | grep sem_redis_ts.sh       | grep -v grep | awk '{print $2}'`
kill `ps aux | grep xadc_redis_ts.sh      | grep -v grep | awk '{print $2}'`
