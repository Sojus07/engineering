{ config, pkgs, ... }:
let
  mtkclient = import ./mtkclient.nix { inherit pkgs; };
in
{
  imports = [ ./android.nix ./android.nix ];
  
  environment.systemPackages = with pkgs; [ 
    minicom
    ethtool
    screen
    tree
    lshw 
    net-tools    
    usbutils
    usbmuxd
    pwntools
    hexyl
    hextazy
    gdb
    xxd
    binwalk
    binutils
    ghidra-bin
    binaryninja-free
    mtkclient
  ];
}
