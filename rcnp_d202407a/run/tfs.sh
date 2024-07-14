#!/bin/sh

#./mq-param-dev-null.sh
./mq-param.sh
./topology-stf-tf-flt-tfs.sh
sleep 0.1
./triggerlogic.sh
sleep 0.1
exec ./run-stf-tf-flt-tfs.sh
