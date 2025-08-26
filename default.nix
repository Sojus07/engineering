{ config, pkgs, ... }:
let
  mtkclient = import ./mtkclient.nix { inherit pkgs; };
in
{
  imports = [ ./android.nix ];
  
  services = {
    udev = {
      enable = true;
      extraRules = ''
        SUBSYSTEM=="usb", ATTR{idVendor}=="0e8d", MODE==0666, GROUP=="plugdev"
      '';
    };
  };

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
