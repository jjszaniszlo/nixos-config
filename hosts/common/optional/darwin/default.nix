_: {
  imports = [
    ./desktop
    ./features/fonts
    ./system
    ./homebrew.nix
  ];

  nix.gc.interval = {
    Hour = 0;
    Minute = 0;
    Weekday = 7;
  };

  security.pam.enableSudoTouchIdAuth = true;
  services.nix-daemon.enable = true;
}
