#!/bin/bash
#MY_TERM=xterm

redis_server=`cat redis-server.txt|sed 's/[[:blank:]]//g'`
DAQSERVICE_URI=" --registry-uri tcp://$redis_server/0"
METRICS_URI=" --metrics-uri tcp://$redis_server/1"
CONFIG_URI=" --parameter-config-uri tcp://$redis_server/2"
DQM_URI=" --scaler-uri tcp://$redis_server/3"

#---------------------------------------------------------
if [[ $1 =~ fairmq- ]]; then
  BINDIR=""
else
  BINDIR=$HOME/repos/exp-config/himac_h445-5_h487/nestdaq-user-impl/bin/
fi

PLUGIN_LIBDIR=$HOME/nestdaq/lib64

PLUGIN_SEARCH_PATH=" -S '<$PLUGIN_LIBDIR'"
DAQSERVICE_PLUGIN=" -P daq_service"
METRICS_PLUGIN=" -P metrics"
CONFIG_PLUGIN=" -P parameter_config"

echo "BINDIR             = $BINDIR"
echo "PLUGIN_LIBDIR      = $PLUGIN_LIBDIR"
echo "PLUGIN_SEARCH_PATH = $PLUGIN_SEARCH_PATH"
echo "DAQSERVICE_PLUGIN  = $DAQSERVICE_PLUGIN"
echo "METRICS_PLUGIN     = $METRICS_PLUGIN"
echo "CONFIG_PLUGIN      = $CONFIG_PLUGIN"
echo "DAQSERVICE_URI     = $DAQSERVICE_URI"
echo "METRICS_URI        = $METRICS_URI"
echo "CONFIG_URI         = $CONFIG_URI"
echo "DQM_URI            = $DQM_URI"

#==============================================================================
function run_device () {
  local var;
  var+=$PLUGIN_SEARCH_PATH
  var+=$DAQSERVICE_PLUGIN
  var+=$METRICS_PLUGIN
  var+=$CONFIG_PLUGIN
  var+=$DAQSERVICE_URI
  var+=$METRICS_URI
  var+=$CONFIG_URI
  var+=$DQM_URI
  #var+=" --severity debug4"
  var+=" --severity info"

  if [ -n "$MY_TERM" ]; then
    #echo \
    $MY_TERM -title $1 -e "$BINDIR/$@ $var"
  else
    #echo \
    eval "$BINDIR/$@ $var"
  fi
}

run_device $@

