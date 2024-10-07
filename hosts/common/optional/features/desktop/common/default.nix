{inputs, pkgs, ...}: {
  imports = [
    ./xserver.nix
  ];

  security.polkit.enable = true;

  environment.systemPackages = [
    inputs.zen-browser.packages."${pkgs.system}".default
  ];
}
