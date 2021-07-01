

/usr/bin/time -v root -b -q 'Fun4All_G4_EICDetector.C(1000000,"18x275",25)' > 1.log  &
/usr/bin/time -v root -b -q 'Fun4All_G4_EICDetector.C(1000000,"18x275",35)' > 2.log  &
/usr/bin/time -v root -b -q 'Fun4All_G4_EICDetector.C(1000000,"5x41",25)' > 3.log  &
/usr/bin/time -v root -b -q 'Fun4All_G4_EICDetector.C(1000000,"5x41",35)' > 4.log  &

wait;
