ln -sf /usr/share/zoneinfo/Australia/Perth /etc/localtime
hwclock --systohc
echo "en_AU.UTF-8 UTF-8" >> /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 
locale-gen
echo "LANG=en_AU.UTF-8" >> /etc/locale.conf
echo "princesswrinkles" >> /etc/hostname
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
useradd -m shiwa
passwd shiwa
git clone https://aur.archlinux.org/emptty.git
chown shiwa:shiwa ./emptty
echo "shiwa ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers 
cd /emptty
sudo -u shiwa makepkg -si 
systemctl enable NetworkManager emptty 
passwd
cd /home/shiwa
git clone https://github.com/UwUham/shiwa-dotfiles
exit
