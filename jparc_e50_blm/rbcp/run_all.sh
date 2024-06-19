#!/bin/bash

./scaler_slowdashify.sh &
./sem_redis_ts.sh &
./xadc_redis_ts.sh &
