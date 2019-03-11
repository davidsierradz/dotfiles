dotfiles
===================
dotfile config files for *nix systems

Binarios necesarios:
-------------
- `composer`
- `editorconfig-core-c`
- `keynav-git` (AUR) o https://github.com/yjftsjthsd-g/keynav (mas actualizado: needs `lib32-cairo`)
- `oh-my-zsh-git` (AUR)
- `redshift` (needs `python-xdg`)
- `rofi`
- `the_silver_searcher`
- `fzf` +
- `lnav` (AUR)
- `tig`
- `diffoscope`
- `universal Ctags` (AUR)
- `urxvt-font-size-git` (AUR)
- `xcape-git` (AUR)
- `zathura` (pdf viewer)
- `zathura-pdf-poppler`
- `zip` and `unzip`
- `spotify` (AUR)
- `playerctl`

Repositorios necesarios para utilizar estos archivos de configuración

instalar phpcd.vim
despues de instalar ir a `~/.vim/bundle/phpcd.vim/`
`$ composer install`

Universal Ctags
```bash
mkdir ~/.ctags.d
ln -s ~/dotfiles/ctags/php.ctags ~/.ctags.d/
```

Para generar los tags del proyecto
`$ ctags -R`
en la raiz de este

Debugger:
En `/etc/nginx/sites-avaliable/xxx.app` cambiar:
`fastcgi_read_timeout` a un numero alto para no resetear el script.

En la vagrant activar xdebug... luego en el ini en fpm:
``` so
xdebug.remote_enable = 1
xdebug.remote_connect_back = 1
xdebug.remote_host = 192.168.10.1
xdebug.remote_port = 9100
xdebug.max_nesting_level = 512
xdebug.remote_autostart= 1
xdebug.collect_params = 3
xdebug.var_display_max_children = -1
xdebug.var_display_max_data = -1
#xdebug.var_display_max_depth = -1
```

Docker

```so
zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20131226/xdebug.so
xdebug.remote_autostart        = 1
xdebug.remote_enable           = 1
xdebug.remote_port             = 9000
xdebug.default_enable          = 1
xdebug.remote_connect_back     = 1
xdebug.var_display_max_children = -1
xdebug.var_display_max_data = -1
xdebug.var_display_max_depth = -1
```

Cambiar los DNS
`$echo 'nameserver 8.8.8.8 \nnameserver 8.8.4.4' > /etc/resolv.conf`
para que no se borre la config de los dns ir al archivo /etc/resolvconf.conf y:
``` conf
resolvconf=NO
```

RECUERDA HACER LOS LINKS SIMBOLICOS AL HOME!

Para cambiar el dark theme del plugin para firefox 'Dark Background and Light Text'
instalar el plugin 'Dorando keyconfig', crear una regla:
'dark light toggle' <Ctrl+F8>
pegar en la conf del shortcut:
``` javascript
let prefs = Components.classes["@mozilla.org/preferences-service;1"].getService(Components.interfaces.nsIPrefBranch);
let key = 'extensions.jid1-QoFqdK4qzUfGWQ@jetpack.enabled';
prefs.setBoolPref(key, ! prefs.getBoolPref(key));
```

Empezar Firefox con un tema blanco:

`env GTK_THEME=Adwaita:light firefox`

Manjaroi3 config
-------------
Configure LightDM Display Manager
`$ chmod +x ~/dotfiles/lightdm/set-correct-monitors.sh`
`$ chmod +x ~/dotfiles/scripts/conky/start_conky_maia`

i3wm config located at
`~/.i3`

Remove
- Bumblebeed

Using a dark theme with Firefox makes the inputs for certain pages to be inusable
so do this:
https://wiki.archlinux.org/index.php/Firefox#Unreadable_input_fields_with_dark_GTK.2B_themes

`$ mkdir .mozilla/firefox/xxxxxxxxxx.default/chrome`
`$ ln -s ~/dotfiles/firefox/userContent.css`
`$ .mozilla/firefox/xxxxxxxxxx.default/chrome/`
better this one:
`$ ln -s ~/dotfiles/firefox/chrome/* ~/.mozilla/firefox/xxxxxxxx.default/chrome`

Vimperator colorscheme
`$ mkdir .vimperator/colors`

URxvt settings
Change font size on the fly
install from AUR: `urxvt-font-size-git`

Set cursor theme, create dir
`$ mkdir .local/share/icons/default`

Hack Nerd Font Mono:
Download https://github.com/ryanoasis/nerd-fonts/releases the hack font.
extract the fonts on `/usr/share/fonts/TTF/`
` # sudo fc-cache -vf`

Use a dev package in composer (phpstan for example):

``` json
"require-dev": {
"phpstan/phpstan": "dev-master",
},
"minimum-stability": "dev",
"prefer-stable" : true
```

Instalar paquetes globales para Vue

`# sudo npm install -g vue-cli`

`# sudo npm install -g vue-language-server`

Instalar phpcs

clonar:

https://github.com/squizlabs/PHP_CodeSniffer

luego dentro del proyecto:

`$ php scripts/build-phar.php`

Darle permisos para ejecturar y mover los phar al PATH

Instalar los estandares para wordpress y phpcompatibility para phpcs

clonar:

https://github.com/wimg/PHPCompatibility
https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards

luego

`# sudo phpcs --config-set installed_paths /home/neuromante/Code/Bins\ and\ Stuffs/WordPress-Coding-Standards,/home/neuromante/Code/Bins\ and\ Stuffs/PHPCompatibility`
Using config file: `/usr/bin/CodeSniffer.conf`

verificar que los estandares esten registrados:

`$ phpcs -i`

Para verificar:

`$ phpcs -p --standard=PHPCompatibility --runtime-set testVersion 7.0-7.1 .`

Instalar Eslint y Stylelint en un proyecto en local

`$ npm install eslint --save-dev`

`$ ./node_modules/.bin/eslint --init`

`$ npm install stylelint --save-dev`

`$ npm install stylelint-config-standard --save-dev`

Crear .stylelintrc en la raiz con:

``` json
{
        "extends": "stylelint-config-standard"
}
```
Stylelint y Eslint para WordPress:

`$ npm init`
`$ npm install eslint --save-dev`
`$ npm install eslint-config-wordpress --save-dev`
`$ npm install stylelint --save-dev`
`$ npm install stylelint-config-wordpress --save-dev`

crear `.eslintrc.json`

``` json
{
    "env": {
        "browser": true,
            "jquery": true,
            "es6": true
    },
        "extends": "wordpress"
}
```

crear `.stylelintrc`

``` json
{
  "extends": "stylelint-config-wordpress"
}
```


Para activar los cambios del .Xresources:
`$ xrdb -merge .Xresources`

Cambiar la timezone de una laravel/homestead:
`# sudo dpkg-reconfigure tzdata`

Cambiar el session timeout de phpmyadmin:
agregar en `/etc/phpmyadmin/config.inc.php`

``` php
$sessionDuration = 3600 * 10;¶
ini_set('session.gc_maxlifetime', $sessionDuration);¶
$cfg['Servers'][$i]['LoginCookieValidity'] = $sessionDuration;¶
```

Cambiar la scrollbar en Chrome:
ir a `chrome://flags` y buscar `#overlay-scrollbars`

Agregar el nombre de usuario a un repo de git:
`$ git config --local remote.origin.url https://davidsierradz@github.com/davidsierradz/dotfiles`

Instalar PyRuler:
`# sudo ln ~/dotfiles/scripts/pyruler.py /usr/bin/pyruler`
`# sudo chmod +x /usr/bin/pyruler`

Special personal laptop setup
-------------
Change Kernel parameters in grub cfg file with this to send default tty output to external monitors

`# sudo vim /etc/default/grub`

``` grub
GRUB_CMDLINE_LINUX_DEFAULT="video=LVDS-1:d"
```

then
`# sudo grub-mkconfig -o /boot/grub/grub.cfg`

enable bluetooth

execute manjaroi3 pulseaudio installer script:

install_pulse

Probar esto primero:

instalar:

`pulseaudio-bluetooth`
`bluez-utils`

luego:

`pactl load-module module-bluetooth-discover` (Una vez)

Hacer el pair y cambiar en pavucontrol el audio device.

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
`$ pactl list cards`
then:
`$ pacmd set-card-profile 1 a2dp_sink`
`$ pacmd set-card-profile 1 headset_head_unit`

maybe write a little script to check actual profile and toggle between the two?

change the protocol from https to ssh for a git repository:
$ git remote set-url origin git@github.com:davidsierradz/dotfiles.git

to open whatsapp custom url protocol in google-chrome:

`# vim /usr/share/applications/google-chrome-unstable.desktop`

search `MimeType` string and add:

`"x-scheme-handler/whatsapp;"`

restart browser


SPACEMACS CONFIGURATION
-------------
When installing javascript layer install tern also and put in PATH
`# sudo npm i tern -g`

For Gtags:
install: `global` (AUR)
install: `pygments`

install: `cscope`
install: https://github.com/xcwen/phpctags.git

NEOVIM
-------------
Install:

- `neovim-git-ninja` (AUR)
- `neovim-qt-git` (AUR)
- `neovim-gtk-git` (AUR)
- `python-neovim-git`
- `python2-neovim-git`
- `gnome-themes-standard`

symlink the dotfiles to `~/.config/nvim/`

install vim-plug:
`$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

inside neovim run
`:PlugInstall`
`:UpdateRemotePlugins`

Download and install the following PHAR:
https://github.com/squizlabs/PHP_CodeSniffer
https://github.com/phpstan/phpstan

Give execute permissions and put in `/usr/bin`

Dont use default syntax file for php:
`$ sudo mv /usr/share/nvim/runtime/syntax/php.vim /usr/share/nvim/runtime/syntax/php.vim.bak`
`$ sudo mv /usr/share/nvim/runtime/autoload/phpcomplete.vim /usr/share/nvim/runtime/autoload/phpcomplete.vim.bak`

To install nvim-cm-tern do:
`# sudo ln -s /usr/bin/node /usr/bin/nodejs`

NEOVIM for Ubuntu 16.04 (Digital Ocean droplet)
-------------
`# sudo add-apt-repository ppa:neovim-ppa/stable`

`# sudo apt-get update`

`# sudo apt-get install neovim`

`# sudo apt-get install python-dev python-pip python3-dev python3-pip`

`mkdir .config/nvim`

clone and link `init-mini.vim`

`$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

`$ pip install setuptools`

`$ pip  install --upgrade neovim`

enter nvim and do `:PlugInstall`
