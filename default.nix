{ pkgs }:
let
  mtkclient = import ./mtkclient.nix { inherit pkgs; };
in
{
  environment.systemPackages = with pkgs; [ 
    minicom
    ethtool
    screen
    tree
    lshw 
    net-tools    

    mtkclient
  ];
}
