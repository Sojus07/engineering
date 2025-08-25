{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    androidenv
    android-tools
    android-studio
    androidsdk

  ];
}
