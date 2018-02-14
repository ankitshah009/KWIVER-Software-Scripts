#!/bin/bash
files_list=`ls $1/`
PWD=`pwd`
for file_name in $files_list;
do
	complete_filename=$1'/'$file_name
	echo "Starting the command"
	mkdir log
	log_path=$PWD/"log"
	echo $log_path
	cmd="./darknet_detections -r $complete_filename"
	time $cmd | tee $log_path'/'$file_name
	echo $cmd
	echo "Command execution complete"
done
wait
echo "Done"
