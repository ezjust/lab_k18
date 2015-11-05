#!/bin/bash


#10.17.9.82 - the server that should play backup role
dir=/home/ez/ezjusy
dir2=/home/ez/clear.txt
var1=`ssh ez@10.17.9.82 "find $dir -type f|wc -l"` #Quantity of files at 10.17.9.82
var2=`find $dir -type f|wc -l` #Quantity of files at local machine
var3=`scp -r $dir ez@10.17.9.82:$dir`
if [ "$var2" -gt "$var1" ];
 
then
	 `$var3`	
	 `echo $(date +"%y-%m-%d %T"), Copying was complited successfully >> $dir2`
	 
elif false; #If copying has been failed

then
	`echo $(date +"%y-%m-%d %T"), Copying was failed >> $dir2`
	 
else
	`echo $(date +"%y-%m-%d %T"), All files are the same >> $dir2`
fi
