#!/bin/sh

first="703"
last="703"
RUNLIST="runlist.csv"


for i in `seq $first $last`; do

 jobsub.py -g $DRY -c config.cfg -csv $RUNLIST converter  $i
 jobsub.py -g $DRY -c config.cfg -csv $RUNLIST clustering $i
 jobsub.py -g $DRY -c config.cfg -csv $RUNLIST hitmaker   $i
 jobsub.py -g $DRY -c config.cfg -csv $RUNLIST missingcoordinate   $i
 jobsub.py -g $DRY -c config.cfg -csv $RUNLIST align      $i
# jobsub.py -g $DRY -c config.cfg -csv $RUNLIST fitter $i
done

#
