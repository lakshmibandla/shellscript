#!/bin/bash
NUMBER=$1
if [ $NUMBER -gt 100 ]
then
echo "give number $NUMBER is gretaer than 100"
else 
echo "give number $NUMBER is not greaterthan 100"
fi
echo "how many arugs passed::$#
echo "all arugs passed::$@
