file=number_connection-$(date +"%d-%m-%y-%R")
user="vm"

last | grep $user | wc -l > $file
tar -cvf "/home/shell-exe/Job08/$file.tar" "$file"
mv "/home/shell-exe/Job08/$file.tar" "/home/shell-exe/Job08"
rm "/home/shell-exe/Job08/$file"


