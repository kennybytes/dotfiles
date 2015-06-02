# !/bin/bash
# Install packages!


# Check if root
if [ "$EUID" -ne 0 ]
  then echo "Please run this command as root"
  exit
fi

# Install packages
package_list=''
if [ $1 = "core" ]; then
    package_list='packages-core'
elif [ $1 = "extra" ]; then
    package_list='packages-extra'
else
    package_list=''
fi

apt-get update
apt-get install $(cat $package_list)
update-alternatives --set editor /usr/bin/vim.basic
