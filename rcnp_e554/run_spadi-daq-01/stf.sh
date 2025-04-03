#!/bin/sh

./mq-param.sh
./topology-stf.sh
exec ./run-stf.sh
