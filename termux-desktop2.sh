pkg up -y && pkg i -y x11-repo tur-repo && pkg i -y audacious parole zsh proot-distro pulseaudio termux-x11-nightly chromium firefox xfce4 xfce4-goodies feathernotes xfce-theme-manager xfce4-terminal xfce4-appmenu-plugin geany && apt install -y netsurf synaptic
cd $HOME
mv .zshrc .zshrc.mac
wget https://github.com/atamshkai/Termux-Zsh/raw/main/zsh.tar.xz 
tar -xvJf zsh.tar.xz && mv ~/zsh/.* ~/
rm -rf ~/zsh
rm -rf ~/.zshrc
rm -rf ~/.zsh_history
chsh -s zsh 
wget https://github.com/atamshkai/Termux-Desktop-2/raw/main/.zshrc
wget https://github.com/atamshkai/Termux-Desktop-2/raw/main/.zsh_history
mv ~/.config ~/.config.mac
echo "mv ~/.config ~/.config.win
mv ~/.config.mac ~/.config
mv ~/.zshrc ~/.zshrc.win
mv ~/.zshrc.mac ~/.zshrc" >>~/../usr/bin/win2mac
chmod +x ~/../usr/bin/win2mac
echo "mv ~/.config ~/.config.mac
mv ~/.config.win ~/.config
mv ~/.zshrc ~/.zshrc.mac
mv ~/.zshrc.win ~/.zshrc" >>~/../usr/bin/mac2win
chmod +x ~/../usr/bin/mac2win
rm -rf ~/win.tar.xz
wget https://archive.org/download/atamshkai-win-termux-x11/win.tar.xz
tar -xvJf win.tar.xz
echo "termux-x11 :0 -xstartup 'dbus-launch --exit-with-session startxfce4' &>/dev/null" >>~/../usr/bin/tm-x11
chmod +x ~/../usr/bin/tm-x11
echo "pkill -f 'app_process / com.termux.x11'" >>~/../usr/bin/stop-tm-x11
chmod +x ~/../usr/bin/stop-tm-x11
echo "Please Login Again"
sleep 3
exit
