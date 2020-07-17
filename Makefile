PWD=`pwd`

build: tmux vim

tmux:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 2> /dev/null || cd ~/.tmux/plugins/tpm; git pull; cd -;
	rm -rf ~/.tmux.conf
	ln -s $(PWD)/tmux.conf ~/.tmux.conf

vim:
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	rm -f ~/.config/nvim/init.vim
	mkdir -p ~/.config/nvim
	ln -s $(PWD)/vimrc ~/.config/nvim/init.vim
	nvim +PlugInstall +qall

tig:
	rm -rf ~/.tigrc
	ln -s $(PWD)/tigrc ~/.tigrc
