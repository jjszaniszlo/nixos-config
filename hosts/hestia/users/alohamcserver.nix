{pkgs, ...}: {
  users.users.alohamcserver = { 
    isNormalUser = true;
    shell = pkgs.zsh;
    home = "/home/alohamcserver";
  };
}
