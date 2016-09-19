# dotfiles
dotfile config files for *nix systems

Binarios necesarios:

Git
Zsh
Vim/Gvim
wmctrl (Para ajustar Gvim, viene por defecto en Linux Mint 18)
Universal Ctags
Silver Searcher Ag
editorconfig

Repositorios necesarios para utilizar estos archivos de configuración

oh-my-zsh
https://github.com/robbyrussell/oh-my-zsh.git

Vundle
https://github.com/gmarik/Vundle.vim.git

Gnome-Terminal Solarized
https://github.com/Anthony25/gnome-terminal-colors-solarized

Dircolors Solarized
https://github.com/seebi/dircolors-solarized

Powerline fonts for candy visuals
https://github.com/powerline/fonts

Powerline zsh theme
https://gist.github.com/3712874

Para eliminar el borde blanco en Gvim, linkea el archivo vim/.gtkrc-2.0 a ~
segun http://askubuntu.com/questions/47831/how-to-remove-gvims-fat-bottom-border-and-resize-grip

Instalar Universal Ctags
https://github.com/universal-ctags/ctags
http://docs.ctags.io/en/latest/autotools.html

para compilar el binario de ctags:
instala build-essentials
instala autoconf
instala automake

Para instalar YouCompleteMe, toca compilar el binario del plugin
instala cmake
instala python-dev y python3-dev
instala node-js y npm para instalar con soporte para javascript
despues ir a ~/.vim/bundle/YouCompleteMe
./install.py --tern-completer

Para generar los tags del proyecto
ctags
en la raiz de este

RECUERDA HACER LOS LINKS SIMBOLICOS AL HOME!
