 #!/bin/bash
WORK_LOG_DIR="/Volumes/Macintosh HD/Documents/dev/work_logs"
WORK_LOG_NAME="log.txt"
if [[ "$1" == "commit" ]]; then
	/usr/bin/git commit $2 $3 $4 $5 $6 $7
	echo $PWD >> "$WORK_LOG_DIR/$WORK_LOG_NAME"
	echo "" >> "$WORK_LOG_DIR/$WORK_LOG_NAME"
	/usr/bin/git log -1 >> "$WORK_LOG_DIR/$WORK_LOG_NAME"
	echo "" >> "$WORK_LOG_DIR/$WORK_LOG_NAME"
	cd "$WORK_LOG_DIR"
	/usr/bin/git add --all
	CURTIME=$(date '+%Y-%m-%d at %H:%M:%S')
	/usr/bin/git commit -m "logs on $PWD on $CURTIME">/dev/null 2>&1
elif [[ "$1" == "push" ]]; then
	/usr/bin/git push $2 $3 $4 $5 $6 $7
	cd "$WORK_LOG_DIR"
	/usr/bin/git push>/dev/null 2>&1 &
else
	/usr/bin/git $1 $2 $3 $4 $5 $6 $7
fi



