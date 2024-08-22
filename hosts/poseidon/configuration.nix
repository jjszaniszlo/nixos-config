{pkgs, ...} : {
  imports = [
    ../common/global/nix.nix
    ../common/global/zsh.nix
    ./homebrew.nix
    ../common/users/jjszaniszlo/darwin.nix
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
