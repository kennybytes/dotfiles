all: install-core

install-core: module_init links packages-core
install-full: install-core packages-extra

packages-core:
	sudo ./install-packages.sh core

packages-extra:
	sudo ./install-packages.sh extra

module_init:
	./git-clone-script.sh
	
links:
	ln -fs ~/.dotfiles/ssh_config ~/.ssh/config
	ln -fs ~/.dotfiles/vimrc ~/.vimrc
	ln -fs ~/.dotfiles/bashrc ~/.bashrc
	ln -fs ~/.dotfiles/vim ~/.vim
	ln -fs ~/.dotfiles/screenrc ~/.screenrc
	ln -fs ~/.dotfiles/dircolors ~/.dircolors
	ln -fs ~/.dotfiles/minttyrc ~/.minttyrc
	ln -fs ~/.dotfiles/gitconfig ~/.gitconfig
	ln -fs ~/.dotfiles/gitconfig ~/.gitconfig
	ln -fs ~/.dotfiles/git-completion.bash ~/.git-completion.bash
	ln -fs ~/.dotfiles/zshrc ~/.zshrc
	ln -fs ~/.dotfiles/emacs ~/.emacs
	ln -fs ~/.dotfiles/modules/oh-my-zsh ~/.oh-my-zsh
profile:
	ln -fs ~/.dotfiles/bash_profile ~/.bash_profile

gitconfig:
	ln -fs ~/.dotfiles/gitconfig ~/.gitconfig
