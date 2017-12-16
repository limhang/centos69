#!/bin/sh
# you can custom your .bash_aliases file, in that way you could edit your terminal in 
# your preference. -- enjoy it -_-

# usage : [customAlias bash_aliases]

# judge .bash_aliases file is exist or not 
bash_aliases="/home/vagrant/.bash_aliases"
if [ -f "$bash_aliases" ]
then
	rm -rf /home/vagrant/.bash_aliases
else
	echo ".bash_aliases not exist so create a new .bash_aliases"
fi

# create new .bash_aliases
sudo touch /home/vagrant/.bash_aliases

# edit file .bash_aliases .. code source from outside bash_aliases
while IFS='' read -r line || [[ -n "$line" ]]; do
    # echo "Text read from file: $line"
    echo "Text read from file: $line"
    echo "$line" >> /home/vagrant/.bash_aliases
done < "$1"

source ~/.bash_aliases