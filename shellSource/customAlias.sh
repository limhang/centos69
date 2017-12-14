#!/bin/sh
# you can custom your .bash_profile file, in that way you could edit your terminal in 
# your preference. -- enjoy it -_-

# usage : [customAlias bash_profile]

# judge .bash_profile file is exist or not 
bash_profile="/home/vagrant/.bash_profile"
if [ -f "$bash_profile" ]
then
	rm -rf /home/vagrant/.bash_profile
else
	echo ".bash_profile not exist so create a new .bash_profile"
fi

# create new .bash_profile
sudo touch /home/vagrant/.bash_profile

# edit file .bash_profile .. code source from outside bash_profile
while IFS='' read -r line || [[ -n "$line" ]]; do
    # echo "Text read from file: $line"
    echo "Text read from file: $line"
    echo "$line" >> /home/vagrant/.bash_profile
done < "$1"

source ~/.bash_profile