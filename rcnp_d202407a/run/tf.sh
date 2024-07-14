#!/bin/sh

./mq-param.sh
./topology-stf-tf.sh
exec ./run-stf-tf.sh
