#!/bin/bash

./scaler_write.sh &
./scaler_hrtdc_slowdashify.sh &
./scaler_lrtdc_amaneq_slowdashify.sh &
./sem_amaneq_redis_ts.sh &
./xadc_amaneq_redis_ts.sh &
./scaler_lrtdc_cirasame_slowdashify.sh &
./sem_cirasame_redis_ts.sh &
./xadc_cirasame_redis_ts.sh &
