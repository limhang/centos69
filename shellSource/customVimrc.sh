#!/bin/sh
# you can custom your .vimrc file, in that way you could edit your terminal in 
# your preference. -- enjoy it -_-

# usage : [customVimrc vimrc]

# judge .vimrc file is exist or not 
vimrc="/home/vagrant/.vimrc"
if [ -f "$vimrc" ]
then
	rm -rf /home/vagrant/.vimrc
else
	echo ".vimrc not exist so create a new .vimrc"
fi

# create new .bash_profile
sudo touch /home/vagrant/.vimrc

# edit file .bash_profile .. code source from outside bash_profile
while IFS='' read -r line || [[ -n "$line" ]]; do
    # echo "Text read from file: $line"
    echo "Text read from file: $line"
    echo "$line" >> /home/vagrant/.vimrc
done < "$1"
