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
xcape (AUR)

Repositorios necesarios para utilizar estos archivos de configuración

oh-my-zsh
https://github.com/robbyrussell/oh-my-zsh.git

Vundle
https://github.com/gmarik/Vundle.vim.git

Solarized for urxvt
https://bbs.archlinux.org/viewtopic.php?id=164108

Gnome-Terminal Solarized
https://github.com/Anthony25/gnome-terminal-colors-solarized

Dircolors Solarized
https://github.com/seebi/dircolors-solarized

Powerline fonts for candy visuals
https://github.com/powerline/fonts

Powerline zsh theme (Agnoster)
https://gist.github.com/3712874

Powerline zsh theme (PowerLevel9k)
https://github.com/bhilburn/powerlevel9k

Solarized for Vim
https://github.com/altercation/vim-colors-solarized

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

Cambiar los DNS
echo 'nameserver 8.8.8.8 \nnameserver 8.8.4.4' > /etc/resolve.conf

RECUERDA HACER LOS LINKS SIMBOLICOS AL HOME!


-------------------------------------------------------------------------------
Manjaroi3 config

Cpmfigure LightDM Display Manager
chmod +x ~/dotfiles/lightdm/set-correct-monitors.sh
chmod +x ~/dotfiles/scripts/conky/start_conky_maia

i3wm config located at
~/.i3

Remove
-Bumblebeed

Using a dark theme with Firefox makes the inputs for certain pages to be inusable
so do this:
https://wiki.archlinux.org/index.php/Firefox#Unreadable_input_fields_with_dark_GTK.2B_themes

mkdir .mozilla/firefox/xxxxxxxxxx.default/chrome
ln -s ~/dotfiles/firefox/userContent.css .mozilla/firefox/xxxxxxxxxx.default/chrome/

Vimperator colorscheme
mkdir .vimperator/colors

URxvt settings
Change font size on the fly
install from AUR: urxvt-font-size-git

Set cursor theme, create dir
mkdir .local/share/icons/default

-------------------------------------------------------------------------------
Special personal laptop setup

Change Kernel parameters in grub cfg file with this to send default tty output to external monitors

sudo vim /etc/default/grub
GRUB_CMDLINE_LINUX_DEFAULT="video=LVDS-1:d"

then
sudo grub-mkconfig -o /boot/grub/grub.cfg
