#!/bin/sh

#./mq-param-all-dev-null.sh
./mq-param-all.sh
./topology-stf-tf-flt-tfs.sh
./triggerlogic.sh
exec ./run-stf-tf-flt-tfs.sh
