#!/bin/bash  #defines the absolute paths of bash

log_file="app.log" # reads the app.log file

#expected_output=$(awk '/ERROR/ {print $1,$2,$4,$7,$8,$9,$10,$11,$12,$13,$14}' "$log_file")

expected_output=$(awk '/ERROR/ {msg="";for(i=7;i<=NF;i++) msg=msg $i " ";print $1, $2, $4, msg}' "$log_file")

echo "$expected_output"
