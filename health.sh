#!/bin/bash

usage() {
    echo "WELCOME TO FIRST VERSION OF SYSTEM HEALTH CHECKER TOOL"
    echo "Command to run this script -> file_name.sh  option"
    echo "Can be run without flags -> file_name.sh "
    echo "By default the result will be stored in summary.txt"
    echo " -o output file name (optional)"
    echo " -h show usage" 

}
output=summary.txt

while getopts ":o:h" opt
do
  case $opt in
  o) output="$OPTARG";;
  h) usage
  exit 1 ;;
  *) usage 
    exit 1 ;;
  esac
done

echo >>$output
echo "======SYSTEM RUNNING TIME======"
running=$(uptime)
echo "$running"
echo

echo "======MEMORY USAGE======"
memory=$(free -h)
echo "$memory"
echo

echo "======DISK USAGE======"
disk=$(df -h)
echo "$disk"
echo

echo "======TOP 5 PROCESSES======"
process=$(ps aux | head -n 5)
echo "$process"
echo

echo "======SYSTEM RUNNING TIME======">>$output
echo >>$output
echo "$running" >>$output
echo >>$output
echo >>$output

echo "======MEMORY USAGE======" >>$output
echo >>$output
echo "$memory" >>$output
echo >>$output
echo >>$output


echo "======DISK USAGE======">>$output
echo >>$output
echo "$disk" >>$output
echo >>$output
echo >>$output

echo "======TOP 5 PROCESSES======">>$output
echo >>$output
echo "$process" >>$output
echo >>$output
echo >>$output