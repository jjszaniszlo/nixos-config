{inputs, pkgs, ...}: {
  environment.systemPackages = [inputs.alejandra.defaultPackage.${pkgs.system}];
}
