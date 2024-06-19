#!/bin/sh

TIMESTAMP=`date +"%Y%m%d%H%M%S"`
FNAME="sampler-out-"$TIMESTAMP".txt"
for i in `seq 0 38`
do
	echo "#"  >> $FNAME
	echo "# RUN "`redis-cli -n 0 get run_info:run_number` >> $FNAME
	echo "# "$i >> $FNAME
	echo "# ts:AmQStrTdcSampler-$i:out[0]:msg-out" >> $FNAME
	echo "#"  >> $FNAME
	redis-cli -n 1 ts.range "ts:AmQStrTdcSampler-$i:out[0]:mb-out" 0 -1  >> $FNAME
done

FNAME="tfb-in-"$TIMESTAMP".txt"
for i in `seq 0 1`
do
	echo "#"  >> $FNAME
	echo "# RUN "`redis-cli -n 0 get run_info:run_number` >> $FNAME
	echo "# "$i >> $FNAME
	echo "# ts:TimeFrameBuilder-$i:in[0]:msg-in" >> $FNAME
	echo "#"  >> $FNAME
	redis-cli -n 1 ts.range "ts:TimeFrameBuilder-$i:in[0]:mb-in" 0 -1  >> $FNAME
done

FNAME="flt-in-"$TIMESTAMP".txt"
for i in `seq 0 3`
do
	echo "#"  >> $FNAME
	echo "# RUN "`redis-cli -n 0 get run_info:run_number` >> $FNAME
	echo "# "$i >> $FNAME
	echo "# ts:LogicFilter-$i:in[0]:msg-in" >> $FNAME
	echo "#"  >> $FNAME
	redis-cli -n 1 ts.range "ts:LogicFilter-$i:in[0]:mb-in" 0 -1  >> $FNAME
done

FNAME="tfs-in-"$TIMESTAMP".txt"
for i in `seq 0 7`
do
	echo "#"  >> $FNAME
	echo "# RUN "`redis-cli -n 0 get run_info:run_number` >> $FNAME
	echo "# "$i >> $FNAME
	echo "# ts:TimeFrameSlicerByLogicTiming-$i:in[0]:msg-in" >> $FNAME
	echo "#"  >> $FNAME
	redis-cli -n 1 ts.range "ts:TimeFrameSlicerByLogicTiming-$i:in[0]:mb-in" 0 -1  >> $FNAME
done

FNAME="tfs-out-"$TIMESTAMP".txt"
for i in `seq 0 7`
do
	for j in `seq 0 1`
	do
		echo "#"  >> $FNAME
		echo "# RUN "`redis-cli -n 0 get run_info:run_number` >> $FNAME
		echo "# "$i >> $FNAME
		echo "# ts:TimeFrameSlicerByLogicTiming-$i:out[$j]:msg-out" >> $FNAME
		echo "#"  >> $FNAME
		redis-cli -n 1 ts.range "ts:TimeFrameSlicerByLogicTiming-$i:out[$j]:mb-out" 0 -1  >> $FNAME
	done
done

FNAME="filesink-in-"$TIMESTAMP".txt"
for i in `seq 0 1`
do
	echo "#"  >> $FNAME
	echo "# RUN "`redis-cli -n 0 get run_info:run_number` >> $FNAME
	echo "# "$i >> $FNAME
	echo "# ts:FileSink-$i:in[0]:msg-in" >> $FNAME
	echo "#"  >> $FNAME
	redis-cli -n 1 ts.range "ts:FileSink-$i:in[0]:mb-in" 0 -1  >> $FNAME
done


#$ redis-cli -n 1 ts.range "ts:FileSink-0:in[0]:mb-in" 0 -1
#AmQStrTdcSampler-14
#[nestdaq@e50server03 run]$ date +"%Y%m%d%H%M%S"
#redis-cli -n 0 get run_info:run_number

