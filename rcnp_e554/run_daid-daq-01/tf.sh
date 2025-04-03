#!/bin/sh

./mq-param.sh
#./mq-param-dev-null.sh
./topology-stf-tf.sh
exec ./run-stf-tf.sh
