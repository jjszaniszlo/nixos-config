{pkgs, config, ...}: {
  home.packages = [ pkgs.lazygit ];
  programs.git = {
    enable = true;
    userName = "John Szaniszlo";
    userEmail = "Johnszaniszlo@gmail.com";
  };

  home.persistence = {
    "/persist/${config.home.homeDirectory}" = {
      directories = [
        ".config/lazygit"
      ];
    };
  };
}
