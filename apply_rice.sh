yay -S --noconfirm --needed < ./dependencies.txt
mv .git git
cp -rf .* ${HOME}
echo "Copied .config, .local to ${HOME}"
mv git .git
i3 restart
