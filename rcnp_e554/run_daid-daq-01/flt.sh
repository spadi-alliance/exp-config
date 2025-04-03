#!/bin/sh

#./mq-param-dev-null.sh
./mq-param.sh
./topology-stf-tf-flt.sh
./triggerlogic.sh
exec ./run-stf-tf-flt.sh
