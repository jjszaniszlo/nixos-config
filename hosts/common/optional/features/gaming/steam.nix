{pkgs, ...}: let
  steam-with-pkgs = pkgs.steam.override {
    extraPkgs = pkgs:
      with pkgs; [
        xorg.libXcursor
        xorg.libXi
        xorg.libXinerama
        xorg.libXScrnSaver
        libpng
        libpulseaudio
        libvorbis
        stdenv.cc.cc.lib
        libkrb5
        keyutils
        gamescope
        mangohud
      ];
  };
in {
  hardware = {
    steam-hardware.enable = true;
  };

  programs.gamescope = {
    enable = true;
    capSysNice = true;
  };

  programs.gamemode = {
    enable = true;

    settings.general = {
      renice = 20;
    };
  };

  environment.systemPackages = with pkgs; [
    gamescope
    mangohud
    protontricks
  ];

  programs.steam = {
    enable = true;
    package = steam-with-pkgs;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
    gamescopeSession = {
      enable = true;
      args = [
        "--output-width 3840"
        "--output-height 2160"
        "--framerate-limit 120"
        "--prefer-output DP-1"
        "--adaptive-sync"
        "--expose-wayland"
        "--steam"
      ];
    };
  };
}
