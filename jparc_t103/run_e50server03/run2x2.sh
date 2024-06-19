#!/bin/sh

#./mq-param-all-dev-null-e73.sh
./mq-param-all-e73.sh
./topology-stf-tf-flt.sh
./triggerlogic.sh
./run2x2-stf-tf-flt-tfs.sh
#ssh 192.168.2.54 '(cd /home/nestdaq/e50test_202404/run ; ./run2x2-stf-tf-flt-tfs.sh)' &

