{pkgs, inputs, ...}: {
  imports = [inputs.lanzaboote.nixosModules.lanzaboote];

  boot.lanzaboote = {
    enable = true;
    pkiBundle = "/etc/secureboot";
  };

  environment.systemPackages = with pkgs; [
    sbctl
  ];
}
