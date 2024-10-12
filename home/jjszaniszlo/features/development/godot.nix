{pkgs, inputs, ...}: {
  home.packages = [
    inputs.godot.packages.${pkgs.system}.godotMono
  ];
}
