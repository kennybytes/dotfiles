all:

links:
	ln -fs ~/.dotfiles/ssh_config ~/.ssh/config
	ln -fs ~/.dotfiles/vimrc ~/.vimrc
	ln -fs ~/.dotfiles/bashrc ~/.bashrc
	ln -fs ~/.dotfiles/vim ~/.vim
	ln -fs ~/.dotfiles/screenrc ~/.screenrc
	ln -fs ~/.dotfiles/dircolors ~/.dircolors
	ln -fs ~/.dotfiles/minttyrc ~/.minttyrc

gitconfig:
	ln -fs ~/.dotfiles/gitconfig ~/.gitconfig
