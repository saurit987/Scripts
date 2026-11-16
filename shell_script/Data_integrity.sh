#!/bin/bash
# This sctipt will check for the file permissions for the important files in the system

echo "This script check existance of below file and their permissions"
echo "---------------------------------------------------------"
echo "/etc/passwd"
echo "/etc/shadow"
echo "/etc/group"
echo "/etc/gshadow"
echo "/etc/hosts"
echo "/etc/resolv.conf"
echo "/etc/hostname"
echo "/etc/issue"
echo "/etc/issue.net"
echo "/etc/motd"
echo "/etc/profile"

echo "-----------------------------------"
echo "File: /etc/passwd"

if [ -f /etc/passwd ]; then
    echo "File exists: Checking permissions"
else
    echo "File does not exist!!"
fi
file_permissions=$(ls -ld /etc/passwd | awk '{print $1}')

if [ "$file_permissions" == "-rw-r--r--" ]; then
    echo "/etc/passwd has correct permissions"
else
    echo "/etc/passwd has incorrect permissions"
fi

# check if the file is owned by the root user
if [ "$(stat -c %U /etc/passwd)" == "root" ]; then
    echo "File is owned by the root user"
else
    echo "File is not owned by the root user"
fi
echo "-----------------------------------"
echo "File: /etc/shadow"

if [ -f /etc/shadow ]; then
    echo "File exists: Checking permissions"
else
    echo "File does not exist!!"
fi
file_permissions=$(ls -ld /etc/shadow | awk '{print $1}')

if [ "$file_permissions" == "-rw-r-----" ]; then
    echo "/etc/shadow has correct permissions"
else
    echo "/etc/shadow has incorrect permissions"
fi 

# check if the file is owned by the root user
if [ "$(stat -c %U /etc/shadow)" == "root" ]; then
    echo "File is owned by the root user"
else
    echo "File is not owned by the root user"
fi
echo "-----------------------------------"
echo "File: /etc/group"

if [ -f /etc/group ]; then
    echo "File exists: Checking permissions"
else
    echo "File does not exist!!"
fi
file_permissions=$(ls -ld /etc/group | awk '{print $1}')

if [ "$file_permissions" == "-rw-r--r--" ]; then
    echo "/etc/group has correct permissions"
else
    echo "/etc/group has incorrect permissions"
fi

# check if the file is owned by the root user
if [ "$(stat -c %U /etc/group)" == "root" ]; then
    echo "File is owned by the root user"
else
    echo "File is not owned by the root user"
fi
echo "-----------------------------------"
echo "File: /etc/gshadow"

if [ -f /etc/gshadow ]; then
    echo "File exists: Checking permissions"
else
    echo "File does not exist!!"
fi
file_permissions=$(ls -ld /etc/gshadow | awk '{print $1}')

if [ "$file_permissions" == "-rw-r-----" ]; then
    echo "/etc/gshadow has correct permissions"
else
    echo "/etc/gshadow has incorrect permissions"
fi

# check if the file is owned by the root user
if [ "$(stat -c %U /etc/gshadow)" == "root" ]; then
    echo "File is owned by the root user"
else
    echo "File is not owned by the root user"
fi
echo "-----------------------------------"
echo "File: /etc/hosts"

if [ -f /etc/hosts ]; then
    echo "File exists: Checking permissions"
else
    echo "File does not exist!!"
fi
file_permissions=$(ls -ld /etc/hosts | awk '{print $1}')

if [ "$file_permissions" == "-rw-r--r--" ]; then
    echo "/etc/hosts has correct permissions"
else
    echo "/etc/hosts has incorrect permissions"
fi

# check if the file is owned by the root user
if [ "$(stat -c %U /etc/hosts)" == "root" ]; then
    echo "File is owned by the root user"
else
    echo "File is not owned by the root user"
fi
echo "-----------------------------------"
echo "File: /etc/resolv.conf"

if [ -f /etc/resolv.conf ]; then
    echo "File exists: Checking permissions"
else
    echo "File does not exist!!"
fi
file_permissions=$(ls -ld /etc/resolv.conf | awk '{print $1}')

if [ "$file_permissions" == "-rw-r--r--" ]; then
    echo "/etc/resolv.conf has correct permissions"
else
    echo "/etc/resolv.conf has incorrect permissions"
fi

# check if the file is owned by the root user
if [ "$(stat -c %U /etc/resolv.conf)" == "root" ]; then
    echo "File is owned by the root user"
else
    echo "File is not owned by the root user"
fi
echo "-----------------------------------"
echo "File: /etc/hostname"

if [ -f /etc/hostname ]; then
    echo "File exists: Checking permissions"
else
    echo "File does not exist!!"
fi
file_permissions=$(ls -ld /etc/hostname | awk '{print $1}')

if [ "$file_permissions" == "-rw-r--r--" ]; then
    echo "/etc/hostname has correct permissions"
else
    echo "/etc/hostname has incorrect permissions"
fi

# check if the file is owned by the root user
if [ "$(stat -c %U /etc/hostname)" == "root" ]; then
    echo "File is owned by the root user"
else
    echo "File is not owned by the root user"
fi
echo "-----------------------------------"
echo "File: /etc/issue"

if [ -f /etc/issue ]; then
    echo "File exists: Checking permissions"
else
    echo "File does not exist!!"
fi
file_permissions=$(ls -ld /etc/issue | awk '{print $1}')

if [ "$file_permissions" == "-rw-r--r--" ]; then
    echo "/etc/issue has correct permissions"
else
    echo "/etc/issue has incorrect permissions"
fi

# check if the file is owned by the root user
if [ "$(stat -c %U /etc/issue)" == "root" ]; then
    echo "File is owned by the root user"
else
    echo "File is not owned by the root user"
fi
echo "-----------------------------------"
echo "File: /etc/issue.net"

if [ -f /etc/issue.net ]; then
    echo "File exists: Checking permissions"
else
    echo "File does not exist!!"
fi
file_permissions=$(ls -ld /etc/issue.net | awk '{print $1}')

if [ "$file_permissions" == "-rw-r--r--" ]; then
    echo "/etc/issue.net has correct permissions"
else
    echo "/etc/issue.net has incorrect permissions"
fi

# check if the file is owned by the root user
if [ "$(stat -c %U /etc/issue.net)" == "root" ]; then
    echo "File is owned by the root user"
else
    echo "File is not owned by the root user"
fi
echo "-----------------------------------"
echo "File: /etc/motd"

if [ -f /etc/motd ]; then
    echo "File exists: Checking permissions"
else
    echo "File does not exist!!"
fi
file_permissions=$(ls -ld /etc/motd | awk '{print $1}')

if [ "$file_permissions" == "-rw-r--r--" ]; then
    echo "/etc/motd has correct permissions"
else
    echo "/etc/motd has incorrect permissions"
fi

# check if the file is owned by the root user
if [ "$(stat -c %U /etc/motd)" == "root" ]; then
    echo "File is owned by the root user"
else
    echo "File is not owned by the root user"
fi
echo "-----------------------------------"
echo "File: /etc/profile"

if [ -f /etc/profile ]; then
    echo "File exists: Checking permissions"
else
    echo "File does not exist!!"
fi
file_permissions=$(ls -ld /etc/profile | awk '{print $1}')

if [ "$file_permissions" == "-rw-r--r--" ]; then
    echo "/etc/profile has correct permissions"
else
    echo "/etc/profile has incorrect permissions"
fi

# check if the file is owned by the root user
if [ "$(stat -c %U /etc/profile)" == "root" ]; then
    echo "File is owned by the root user"
else
    echo "File is not owned by the root user"
fi