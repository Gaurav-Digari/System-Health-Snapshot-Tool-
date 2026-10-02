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