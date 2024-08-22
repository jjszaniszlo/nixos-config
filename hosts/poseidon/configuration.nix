{pkgs, ...} : {
  imports = [
    ../common/global/nix.nix
    ../common/global/zsh.nix
    ../common/users/jjszaniszlo/darwin.nix
    ./homebrew.nix
    ./finder.nix
    ./keyboard.nix
    ./skhd.nix
    ./spacebar.nix
    ./system-defaults.nix
    ./yabai.nix
  ];

  environment.systemPackages = with pkgs; [
    defaultbrowser
  ];

  fonts.packages = with pkgs; [
    font-awesome
    (nerdfonts.override { fonts = [ "VictorMono" ]; })
  ];

  nixpkgs.hostPlatform = "aarch64-darwin";

  security.pam.enableSudoTouchIdAuth = true;
  services.nix-daemon.enable = true;

  system = {
    activationScripts = {
      postUserActivation.text = ''
        defaultbrowser vivaldi
        # Following line should allow us to avoid a logout/login cycle
        /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
      '';
    };
    stateVersion = 4;
  };

  system.defaults.CustomUserPreferences = {
    "com.apple.finder" = {
      _FXSortFoldersFirst = true;
      FXRemoveOldTrashItems = true;
    };
    "com.apple.screensaver" = {
      askForPassword = 1;
      askForPasswordDelay = 0;
    };
    "com.apple.AdLib" = {
      allowApplePersonalizedAdvertising = false;
    };
    "com.apple.SoftwareUpdate" = {
      AutomaticCheckEnabled = true;
      ScheduleFrequency = 1;
      AutomaticDownload = 1;
      CriticalUpdateInstall = 1;
    };
    "com.apple.commerce".AutoUpdate = true;
  };
}
