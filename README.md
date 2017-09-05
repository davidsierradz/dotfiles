# dotfiles
dotfile config files for *nix systems

Binarios necesarios:

composer
editorconfig
gtk-breath-theme
git
i3-gaps-next-git (AUR) (You need to remove manjaro-i3-settings to swap default i3wm)
keynav-git (AUR) o https://github.com/yjftsjthsd-g/keynav (mas actualizado: needs lib32-cairo)
nerd-fonts-complete-mono-glyphs (AUR)
php
redshift-gtk (needs python-xdg)
silver Searcher Ag
universal Ctags
urxvt-font-size-git (AUR)
vibrancy-colors (icon-theme)
vim/Gvim
waterfox-bin (AUR)
xcape (AUR)
zathura (pdf viewer)
zip and unzip
zsh

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
update theme with git pull from ~/.oh-my-zsh/custom/themes/powerlevel9k/

Zsh completions plugin
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

Zsh autosugestion
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

Solarized for Vim
https://github.com/altercation/vim-colors-solarized

Para eliminar el borde blanco en Gvim, linkea el archivo vim/.gtkrc-2.0 a ~
segun http://askubuntu.com/questions/47831/how-to-remove-gvims-fat-bottom-border-and-resize-grip

link gtk/gtk-3.0/settings.ini a ~/.config/gtk/gtk-3.0/

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

instalar phpcd.vim
despues de instalar ir a ~/.vim/bundle/phpcd.vim/
hacer composer install

Para generar los tags del proyecto
ctags
en la raiz de este

Debugger
En la vagrant activar xdebug... luego en el ini en fpm:
xdebug.remote_connect_back = 1
xdebug.remote_port = 9000
xdebug.max_nesting_level = 512
xdebug.remote_autostart= 1
xdebug.collect_params = 3
xdebug.var_display_max_children = -1
xdebug.var_display_max_data = -1
xdebug.var_display_max_depth = -1

Cambiar los DNS
echo 'nameserver 8.8.8.8 \nnameserver 8.8.4.4' > /etc/resolv.conf
para que no se borre la config de los dns ir al archivo /etc/resolvconf.conf y:
resolvconf=NO

RECUERDA HACER LOS LINKS SIMBOLICOS AL HOME!


-------------------------------------------------------------------------------
Manjaroi3 config

Configure LightDM Display Manager
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
better this one:
ln -s ~/dotfiles/firefox/chrome/* ~/.mozilla/firefox/xxxxxxxx.default/chrome

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

enable bluetooth
execute manjaroi3 pulseaudio installer script:
install_pulse
then to enable headset buttons create file in:
/etc/modules-load.d/uinput.conf containing uinput
run blueman and pair device, change default audio device with pavucontrol

if a problem with connecting bluetooth headset, delete the device and unpair from blueman-manager
and do:

install bluetoothctl

open bluetoothctl:
 power on
 agent on
 default-agent
 scan on

 pair XX:XX:XX:XX:XX:XX
 connect XX:XX:XX:XX:XX:XX

 scan off
 exit

to toggle between A2DP sink mode and HSP (to use microphone of the headset)
search number of bluetooth headset 'card':
pactl list cards
then:
pacmd set-card-profile 1 a2dp_sink
pacmd set-card-profile 1 headset_head_unit

maybe write a little script to check actual profile and toggle between the two?

change the protocol from https to ssh for a git repository:
$ git remote set-url origin git@github.com:davidsierradz/dotfiles.git

-------------------------------------------------------------------------------

SPACEMACS CONFIGURATION

When installing javascript layer install tern also and put in PATH
sudo npm i tern -g

For Gtags:
install: global (AUR)
install: pygments

install: cscope
install: https://github.com/xcwen/phpctags.git

-------------------------------------------------------------------------------

NEOVIM

Install:

- neovim-git-ninja
- neovim-qt
- python-neovim
- python2-neovim

symlink the dotfiles to ~/.config/nvim/

install vim-plug:
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

inside neovim run
:PlugInstall
:UpdateRemotePlugins

Download and install the following PHAR:
https://github.com/squizlabs/PHP_CodeSniffer
https://github.com/phpstan/phpstan

Give execute permissions and put in /usr/bin

Dont use default syntax file for php:
$ sudo mv /usr/share/nvim/runtime/syntax/php.vim /usr/share/nvim/runtime/syntax/php.vim.bak
$ sudo mv /usr/share/nvim/runtime/autoload/phpcomplete.vim /usr/share/nvim/runtime/autoload/phpcomplete.vim.bak

To install nvim-cm-tern do:
sudo ln -s /usr/bin/node /usr/bin/nodejs
