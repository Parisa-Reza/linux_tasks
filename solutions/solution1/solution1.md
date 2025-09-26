# Log File Filtering Task

## Solution

1. I created a log file named **`app.log`** and added at least **10 lines** of mixed log messages.  
   including different log levels such as `WARN`, `DEBUG`, and at least **3 lines** with the keyword `ERROR`.

   source :  https://github.com/logpai/loghub/blob/master/Zookeeper/Zookeeper_2k.log

2. Then I wrote a **bash script** named **`find_errors.sh`** that:

   - Reads from `app.log`.
   - Extracts and displays only the lines that contain the keyword `ERROR`.

 ## Script :

   ```bash
   #!/bin/bash  #defines the absolute paths of bash
   
   log_file="app.log" # reads the app.log file

   #expected_output=$(awk '/ERROR/ {print $1,$2,$4,$7,$8,$9,$10,$11,$12,$13,$14}' "$log_file")

   expected_output=$(awk '/ERROR/ {msg="";for(i=7;i<=NF;i++) msg=msg $i " ";print $1, $2, $4, msg}' "$log_file")

   echo "$expected_output"

   ```



## Expected Output
   
![script output](Capture1.PNG)

