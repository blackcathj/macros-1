#!/bin/bash

file_base='data/Fun4All_G4_EICDetector_ECCE_Prop4_A_'

for i in {1..21}
do
  
  cmd="root -b -q Fun4All_G4_EICDetector.C($i) "
  echo "=================================================================================================="
  echo "$cmd ->  $file_base$i.log"
  echo "=================================================================================================="
  
  $cmd  | tee $file_base$i.log &
  
done
