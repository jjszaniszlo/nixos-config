{...}: {
  imports = [./base.nix];
  users.users.jjszaniszlo = {
    isNormalUser = true;
    home = "/home/jjszaniszlo";
    extraGroups = [ "wheel" ];
  };
}
