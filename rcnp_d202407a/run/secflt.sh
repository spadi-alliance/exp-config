#!/bin/sh

./mq-param.sh
./triggerlogic.sh
./topology-stf-tf-flt-tfs-secflt.sh
exec ./run-stf-tf-flt-tfs-secflt.sh
