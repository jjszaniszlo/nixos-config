# Nixos-config

This is my basic nixos config.  I plan on expanding it to have host configurations for home servers and nix-darwin at some point.

install command (for my device):
```
sudo nix run 'github:nix-community/disko#disko-install' --extra-experimental-features 'flakes nix-command' --fallback -- --write-efi-boot-entries --flake 'github:jjszaniszlo/nixos-config/rebuild#athena' --disk main /dev/nvme0n1
```
