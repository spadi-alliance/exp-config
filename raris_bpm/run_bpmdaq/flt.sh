#!/bin/sh

./mq-param.sh
./topology-stf-tf-flt.sh
exec ./run-stf-tf-flt.sh
