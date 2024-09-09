{pkgs, config, ...}: {
  home.packages = with pkgs; [
    bitwarden-desktop
  ];

  home.persistence = {
    "/persist/${config.home.homeDirectory}" = {
      directories = [
        ".config/Bitwarden"
      ];
    };
  };
}
