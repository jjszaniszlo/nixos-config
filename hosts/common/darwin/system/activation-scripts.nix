{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    defaultbrowser
  ];

  system = {
    activationScripts = {
      extraActivation.text = ''
        softwareupdate --install-rosetta --agree-to-license
      '';
      postUserActivation.text = ''
        defaultbrowser vivaldi

        /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
      '';
    };
  };
}
