{
  description = "MTKClient for NixOS";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs, ... }: let 
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    packages.${system} = {
      mtkclient = pkgs.callPackage ./mtkclient.nix {};
    };
    nixosModules.default = import ./default.nix;
  };
}
