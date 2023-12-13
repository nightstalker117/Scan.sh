#!/bin/bash

echo "Enter Hostname: "
read hostname

echo "What is the destination folder and file for output files: "
read dest_path

nmap -sS -A -p 1-65535 -T3 -oA $dest_path $hostname &
amass enum -d $hostname -oA $dest_path 

