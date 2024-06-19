#!/bin/sh

./mq-param-all-e73.sh
./topology-stf-tf.sh
exec ./run-stf-tf-e73.sh

#./topology-stf-tf-sc.sh
#exec ./run-stf-tf-sc.sh
