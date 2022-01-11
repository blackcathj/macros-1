#! /bin/tcsh -f

set cfg = $1;
set basdir = '/phenix/u/jinhuang/links/sPHENIX_work/Fluence/';
# set basdir = '/phenix/u/jinhuang/links/sPHENIX_work/EIC/DAQ';
#set basdir = '/sphenix/user/jinhuang/HF-jet/event_gen/';
# set basdir = '/direct/phenix+sim02/phnxreco/sPHENIX/sPHENIX_FHCAL/test';
set Ntotal = 10;
set nSkip = 1;

mkdir -vp $basdir/$cfg/

mv -fv $basdir/$cfg/list $basdir/$cfg/list.old

foreach x (`seq 1 1 $Ntotal`)
	@ x = $x * $nSkip;
	
	echo "$basdir/$cfg/${x}" >> $basdir/$cfg/list
end

wc -l $basdir/$cfg/list

echo done;

