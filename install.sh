stow -t $HOME .


echo "entering INSTALL/sddm-configuration"
pushd INSTALL/sddm-configuration

echo "installing sddm configuration file"
sudo stow -v -t /etc/ .

echo "leaving INSTALL/sddm-configuration"
popd

echo "creating hyprland config directory for sddm user"
sudo mkdir -p /var/lib/sddm/.config/hypr

echo "entering INSTALL/hyprland-sddm-conf"
pushd INSTALL/hyprland-sddm-conf

echo "installing hyprland.conf for sddm user"
sudo stow -v -t /var/lib/sddm/.config/hypr/ .

echo "adding file access permission for sddm user"
setfacl -m u:sddm:r hyprland.conf

echo "leaving INSTALL/hyprland-sddm-conf"
popd

echo "resetting ownership for sddm user directory"
sudo chown -R sddm:sddm /var/lib/sddm/

