#! /bin/tcsh -f

if ( $#argv < 1 ) then 
	echo "Usage : $0 src_data_file src_dir";
	exit;
endif


set src_data_file = $1;
set src_dir = $2;

set name = `basename $0 .sh`; 
set idd = `basename $src_data_file`; 

echo  "start $idd $PWD $0 $* -> $name" ;

set q = '"';

cp -fv $src_data_file ./input.cfg

echo '########################################'
echo "Fun4All_G4_EICDetector.C"
echo '########################################'

cat Fun4All_G4_EICDetector.C

echo '########################################'
echo "G4Setup_EICDetector.C"
echo '########################################'

cat G4Setup_EICDetector.C

echo '########################################'
echo "Run"
echo '########################################'


root -l -b -q "Fun4All_G4_EICDetector.C(100, $idd)" ;
cp -fv G4EICDetector.root_g4svtx_eval.root  ${src_data_file}_g4svtx_eval.root;
cp -fv G4EICDetector.root_DSTReader.root  ${src_data_file}_DSTReader.root;
cp -fv G4EICDetector.root_g4score.root  ${src_data_file}_g4score.root;

date ;
echo "end" ;
