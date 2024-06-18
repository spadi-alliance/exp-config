#!/bin/sh

#./mq-param-dev-null.sh
./mq-param.sh
./topology-stf-tf-flt-tfs.sh
./triggerlogic.sh
exec ./run-stf-tf-flt-tfs.sh
