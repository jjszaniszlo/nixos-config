{pkgs, ...}: {
  users.users.jjszaniszlo = {
    home = "/Users/jjszaniszlo";
    shell = pkgs.zsh;

    packages = with pkgs; [
      home-manager
    ];
  };
}
