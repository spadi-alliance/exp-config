#!/bin/sh

./mq-param-all.sh
#./topology-stf.sh
#exec ./run-stf.sh

./topology-stf-sc.sh
exec ./run-stf-sc.sh
