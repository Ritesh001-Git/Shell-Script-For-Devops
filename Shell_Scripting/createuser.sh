#1/bin/bash

read -p "Enteruser name: " name
echo "Your Username: $name"

#sudo useradd -m "name"
echo "Used added Sucessfully"

# Adding user by Argument
echo "Adding users by arguments $1 $2 $3"

sudo useradd -m "$1"
sudo useradd -m "$3"
sudo useradd -m "$2"



