#! /bin/bash 

# using gpg for file encryption

echo "This is a script to encrypt a file"
echo "You have to provide a full path of the file"

# users have to type the full path of the file

echo "Please enter a file: "
read file

# gpg will encrypt the file users provided

gpg -c $file
echo "The file has been successfully encrypted." 

# Ask for confirmation before removing the original file

read -p "Do you want to remove the original file? (y/n): " confirm

if [ $confirm == y ]; then
    rm -rf $file
    echo "$file file removed"
else 
    echo "$file file is not removed"
fi 