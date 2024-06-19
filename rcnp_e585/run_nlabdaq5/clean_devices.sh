#!/bin/sh

killall -KILL AmQStrTdcSampler
killall -KILL STFBuilder
killall -KILL TimeFrameBuilder
killall -KILL fltcoin
killall -KILL EventBuilder
killall -KILL Scaler
#ssh getdaq02 'killall -KILL FileSink'
ssh e585@aino-1 'killall -KILL FileSink'
