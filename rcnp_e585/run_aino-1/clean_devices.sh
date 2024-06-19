#!/bin/sh

killall -KILL AmQStrTdcSampler
killall -KILL STFBuilder
killall -KILL TimeFrameBuilder
killall -KILL fltcoin
killall -KILL EventBuilder
killall -KILL AmQStrTdcDqmScr
ssh getdaq02 'killall -KILL FileSink'
