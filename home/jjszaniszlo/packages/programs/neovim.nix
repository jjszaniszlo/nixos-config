{inputs, pkgs, ...} : {
  home.packages = with pkgs; [
    inputs.nixvim.packages.${pkgs.system}.default
    ripgrep
  ];
}
