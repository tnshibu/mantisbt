NOW=$(date +"%Y-%m-%d-%H-%M-%S")

sudo mysqldump -u admin -paDmin_1294 bugtracker > dump_file_$NOW.sql

