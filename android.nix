{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    android-tools
    android-studio
    androidsdk
  ];
}
