{pkgs, ...}: {
  imports = [./base.nix];

  users.users.jjszaniszlo = {
    isNormalUser = true;
    description = "John Szaniszlo";
    shell = pkgs.zsh;
    packages = [ pkgs.home-manager ];
    extraGroups = [ "wheel" "docker" ];
  };

  users.users."user".openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINf+Sqev3oqnvNk5ReexB9kwrjJ9Zqj2ae70D/vXmjMi jjszaniszlo"
  ];
}
