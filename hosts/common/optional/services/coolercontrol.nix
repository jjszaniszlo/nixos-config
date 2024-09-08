{
  boot.kernelModules = ["kvm-amd" "nct6775" "k10temp"];

  programs.coolercontrol.enable = true;
}
