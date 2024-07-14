#!/bin/sh

./mq-param.sh
./triggerlogic.sh
./topology-stf-tf-flt.sh
exec ./run-stf-tf-flt.sh
