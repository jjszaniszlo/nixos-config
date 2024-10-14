{pkgs, ...}: {
  home.packages = with pkgs; [
    grim # screenshot functionality
    slurp # screenshot functionality
  ];
}
