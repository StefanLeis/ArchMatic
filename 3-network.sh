#!/usr/bin/env bash
#-------------------------------------------------------------------------
#     _          _    __  __      _   _    
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__ 
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__| 
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING NETWORK COMPONENTS"
echo

# NOTE: Do I need: networkmanager-openvpn
# Or is networkmanager-vpnc all I need for VPN?

PKGS=(
        'wpa_supplicant'
        'dialog'
        'networkmanager'
        'openvpn'
        'networkmanager-vpnc'
        'network-manager-applet'
        'dhclient'
        'libsecret'
        'gnome-keyring'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
