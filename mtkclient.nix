{ pkgs, ... }:
pkgs.python3Packages.buildPythonApplication rec {
    pname = "mtkclient";
    version = "git-3093e6";
    src = pkgs.fetchFromGitHub {
      owner = "bkerler";
      repo = "mtkclient";
      rev = "3093e652339352dca0806b9f3d6a2b4384a992ae"; # https://github.com/bkerler/mtkclient/commit/3093e652339352dca0806b9f3d6a2b4384a992ae 
      sha256 = "sha256-7fCX7NyvNAlz6ikGjHjoXblHfNrl6PUnG2jHfit71vk=";
    };
    pyproject = true;
    build-system = with pkgs; [ python3Packages.setuptools python313Packages.hatchling ];
    
    propagatedBuildInputs = with pkgs.python3Packages; [
      wheel
      setuptools
      pyusb
      pycryptodome
      pycryptodomex
      colorama
      shiboken6
      pyside6
      mock
      pyserial
      flake8
      keystone-engine
      capstone
      unicorn
      fusepy
    ];  
    nativeBuildInputs = with pkgs; [ libusb1 ];
    
    pythonImportsCheck = [ "mtkclient" ];
    doCheck = false;
}
