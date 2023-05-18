    
#!/bin/bash

LOG_DIR="/var/log"
DAYS_THRESHOLD=7


echo "find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS_THRESHOLD" -exec rm {} \;"

