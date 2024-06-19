#!/bin/sh

./mq-param-all.sh
./topology-stf-tf.sh
exec ./run-stf-tf.sh

#./topology-stf-tf-sc.sh
#exec ./run-stf-tf-sc.sh
