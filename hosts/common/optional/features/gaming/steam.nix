{config, pkgs, ...}: let
  monitor = (builtins.elemAt config.home-manager.users.jjszaniszlo.monitors 0);
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
      "--output-width ${toString monitor.width}"
      "--output-height ${toString monitor.height}"
      "--framerate-limit ${toString monitor.refresh-rate}"
      "--prefer-output ${monitor.name}"
      "--adaptive-sync"
      "--expose-wayland"
      "--hdr-enabled"
      "--steam"
      ];
    };
  };
}
