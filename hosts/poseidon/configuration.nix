{pkgs, ...} : {
  homebrew = {
    enable = true;

    taps = [];
    brews = [];
    casks = [
      "wezterm"
      "vivaldi"
    ];
  };

  environment.systemPackages = with pkgs; [
    defaultbrowser
  ];

  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
    package = pkgs.nix;
  };

  nixpkgs.hostPlatform = "aarch64-darwin";

  programs.zsh.enable = true;

  security.pam.enableSudoTouchIdAuth = true;
  services.nix-daemon.enable = true;

  system = {
    activationScripts = {
      postUserActivation.text = "defaultbrowser vivaldi";
    };
    stateVersion = 4;
    defaults.dock = {
      autohide = true;
      persistent-apps = [
        "/System/Applications/Launchpad.app"
        "/Applications/WezTerm.app"
        "/Applications/Vivaldi.app"
        "/System/Applications/Messages.app"
        "/System/Applications/Mail.app"
      ];
      tilesize = 48;
      wvous-br-corner = 1;
      magnification = false;
    };
  };
  users.users.jjszaniszlo = {
    home = "/Users/jjszaniszlo"; 

    packages = with pkgs; [
      home-manager
    ];
  };
}
