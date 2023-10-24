#!/bin/bash

passwords = "passwords.txt"
emails = "email_addresses.txt"
usernames = "usernames.txt"


#to add new record
new_record(){
       read "Please enter new user name: " username
       read "Please enter email: " email
       read "Please enter password: "password"
       echo "$name" >> "$passwords"
       echo "$email" >> "$emails"
       echo "$password" >> "$passwords"
       echo "New user added!"
}

#to edit existing record
search_records(){
    read -p "Enter username to search: " username
    exists = false    
    
    #read each line in the file
    while read -r record; do
        if [ "$record" == "$my_user"]; then
            exists = true
            break
        fi
    done <"$usernames"
    
    if ["$exists" = true]; then 
        #get the line where record is stored
        index=$(grep -n "$my_user""$usernames" | cut -d: -f1)

        #retrieve password and email
        password = $(sed -n "${index}p" "$passwords")
        email = $(sed -n "${index}p" "$emails")

        #display search results
        echo "User Found!"
	echo "Username : $username"
	echo "Email : $email"
	echo "Password : $password"
else 
	echo "User '$username"

        

}


echo “Record Management System”
echo “ 1. New Record”
echo “ 2. Edit Record”
echo “ 3. Search Record”
echo “ 4. Generate Report”
echo " 5. Quit"


read -p “Please Enter Choice: “ choice

 

        
 

