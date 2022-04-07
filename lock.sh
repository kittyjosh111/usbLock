#!/bin/sh
while :
do
#in the below line, change 'Amazon' to a string unique to the device. You can do this by looking at the output of lsusb."
    check=`lsusb | grep Amazon`

    if [ -n "${check}" ] ; then
	killall xsecurelock
        continue
    else
	play beep.mp3
    	xsecurelock
    	echo "lock started"
    fi
done
exit 0
