{pkgs, ...}: {
  programs.nix-ld.enable = true;

  # Sets up all the libraries to load
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc # commonly needed
    zlib # commonly needed
    openssl # commonly needed
  ];
}
