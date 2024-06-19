#!/bin/bash


for script_name in scaler_write.sh \
scaler_hrtdc_slowdashify.sh \
scaler_lrtdc_amaneq_slowdashify.sh \
scaler_lrtdc_cirasame_slowdashify.sh \
sem_amaneq_redis_ts.sh \
sem_cirasame_redis_ts.sh \
xadc_amaneq_redis_ts.sh \
xadc_cirasame_redis_ts.sh
do
pid=`ps aux | grep "$script_name" | grep -v grep | awk '{print $2}'`
if [ "$pid" != "" ]; then
    kill -KILL ${pid}
fi
done
