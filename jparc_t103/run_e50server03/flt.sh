#!/bin/sh

./mq-param-all-dev-null.sh
./topology-stf-tf-flt.sh
./triggerlogic.sh
exec ./run-stf-tf-flt.sh
