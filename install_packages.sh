# !/bin/bash
# Install packages!
apt-get update
apt-get install $(cat packages)
update-alternatives --set editor /usr/bin/vim.basic

