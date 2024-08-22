{pkgs, ...} : {
  homebrew = {
    enable = true;

    taps = [];
    brews = [];
    casks = [
      "wezterm"
      "vivaldi"
    ];
    masApps = {
      "Bitwarden" = 1352778147;
    };
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
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
      userKeyMapping = [
        { # set left fn to be control
          HIDKeyboardModifierMappingSrc = 1095216660483;
          HIDKeyboardModifierMappingDst = 30064771296;
        }
        { # set right option to be fn
          HIDKeyboardModifierMappingSrc = 30064771302;
          HIDKeyboardModifierMappingDst = 1095216660483;
        }
      ];
    };
    activationScripts = {
      postUserActivation.text = ''
        defaultbrowser vivaldi
        # Following line should allow us to avoid a logout/login cycle
        /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
      '';
    };
    stateVersion = 4;
    defaults = {
      NSGlobalDomain = {
        "com.apple.keyboard.fnState" = true;
      };
      dock = {
        autohide = true;
        show-process-indicators = false;
        show-recents = false;
        static-only = true;
      };
      finder = {
        AppleShowAllExtensions = true;
        ShowPathbar = false;
        FXEnableExtensionChangeWarning = false;
        _FXShowPosixPathInTitle = true;
      };
    };
  };

  system.defaults.CustomUserPreferences = {
  };

  users.users.jjszaniszlo = {
    home = "/Users/jjszaniszlo"; 
    shell = pkgs.zsh;

    packages = with pkgs; [
      home-manager
    ];
  };
}
