#!/bin/bash

`cat readings | grep /1/ | awk -F/ '{sum=sum+$3} END {print sum/NR}' | cat  > /home/ez/file.txt`
`cat readings | grep /2/ | awk -F/ '{sum=sum+$3} END {print sum/NR}' | cat  >> /home/ez/file.txt ` 
`cat readings | grep /3/ | awk -F/ '{sum=sum+$3} END {print sum/NR}' | cat  >> /home/ez/file.txt`
`cat readings | grep /4/ | awk -F/ '{sum=sum+$3} END {print sum/NR}' | cat  >> /home/ez/file.txt`
`cat readings | grep /5/ | awk -F/ '{sum=sum+$3} END {print sum/NR}' | cat  >> /home/ez/file.txt`
res=`paste /home/ez/sensors /home/ez/file.txt > /home/ez/result.txt | sort -k3nr /home/ez/result.txt | awk '{r = $2 " " $3; print r}'`
echo $res
