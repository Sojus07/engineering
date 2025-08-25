{ config, pkgs, ... }:
let
  mtkclient = import ./mtkclient.nix { inherit pkgs; };
in
{
  import = [ ./android.nix ];
  
  environment.systemPackages = with pkgs; [ 
    minicom
    ethtool
    screen
    tree
    lshw 
    net-tools    
    usbutils
    usbmuxd
    pwndbg
    pwntools
    hexyl
    hextazy
    gdb
    xxd
    binwalk
    binutils
    ghidra-bin
    ghidra-extensions
    binaryninja-free
    mtkclient
  ];
}
