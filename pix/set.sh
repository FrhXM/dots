#!/usr/bin/sh
echo " ##################################################################"
echo " ############### Clone My dots From Github ########################"
echo " ##################################################################"
mkdir -p ~/{.config,.local}
cd ~/.local/ && git clone https://github.com/frhxm/dots

echo "##############################"
echo "### Link My Dots Config ######"
echo "##############################"
mkdir -p ~/.local/share/		# For My Fonts
rm -rf ~/.config/fish/  	  # delete Existing Folder First
ln -sf ~/.local/dots/pix ~/pix
ln -sf ~/.local/dots/.xinitrc ~/.xinitrc
ln -sf ~/.local/dots/.Xresources ~/.Xresources
ln -sf ~/.local/dots/.config/qtile ~/.config/qtile
ln -sf ~/.local/dots/.config/kitty ~/.config/kitty
ln -sf ~/.local/dots/.config/rofi ~/.config/rofi
ln -sf ~/.local/dots/.config/sxiv ~/.config/sxiv
ln -sf ~/.local/dots/.config/qutebrowser ~/.config/qutebrowser
ln -sf ~/.local/dots/.config/nvim ~/.config/nvim
ln -sf ~/.local/dots/.config/fish ~/.config/fish
ln -sf ~/.local/dots/.config/dunst ~/.config/dunst
ln -sf ~/.local/dots/.config/picom ~/.config/picom
ln -sf ~/.local/dots/.config/user-dirs.dirs ~/.config/user-dirs.dirs
ln -sf ~/.local/dots/.local/share/fonts ~/.local/share/fonts

echo " ########################### "
echo " ### Directory In Home ##### "
echo " ########################### "
mkdir -p ~/{desk,dl,dox,music,prjcts,vids,pub}
# trash-put Desktop/ Documents/ Downloads/ Music/ Pictures/ Public/ Templates/ Videos/

echo " ############################### "
echo " ##### Permision Files ######### "
echo " ############################### "
# .xinitrc
chmod +x ~/.xinitrc
# Scripts AutoStart App When Run qtile
chmod +x ~/.config/qtile/scripts/autostart.sh
# Sxiv (image viewr Scripts)
chmod +x ~/.config/sxiv/exec/key-handler

echo "##############################"
echo "##### Pacman Things ##########"
echo "##############################"
sudo pacman -Rsn vim
# sudo systemctl enable bluetooth
sudo mkdir -p /etc/pacman.d/
cd /etc/pacman.d/
sudo git clone https://github.com/FrhXM/hooks

echo "##############################"
echo "########### DONE #############"
echo "##############################"
sleep 5
exit
