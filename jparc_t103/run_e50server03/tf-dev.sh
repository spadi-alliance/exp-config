#!/bin/sh

./mq-param-all-dev.sh
./topology-stf-tf-dev.sh
exec ./run-stf-tf-dev.sh

#./topology-stf-tf-sc.sh
#exec ./run-stf-tf-sc.sh
