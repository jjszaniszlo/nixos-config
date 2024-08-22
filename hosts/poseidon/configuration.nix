{pkgs, ...} : {
  imports = [
    ../common/global/nix.nix
    ../common/global/zsh.nix
    ../common/users/jjszaniszlo/darwin.nix
    ./homebrew.nix
    ./keyboard.nix
    ./skhd.nix
    ./system-defaults.nix
    ./yabai.nix
  ];

  environment.systemPackages = with pkgs; [
    defaultbrowser
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
  };
}
