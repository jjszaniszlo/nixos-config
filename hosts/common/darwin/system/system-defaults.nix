{
  system.defaults = {
    menuExtraClock = {
      Show24Hour = true;
      ShowAMPM = false;
    };
    NSGlobalDomain = {
      "com.apple.keyboard.fnState" = true;
      _HIHideMenuBar = true;
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
}
