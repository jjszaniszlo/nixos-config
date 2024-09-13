{
  # add extra kernal modules for sensors
  boot.kernelModules = ["kvm-amd" "nct6775" "k10temp"];

  programs.coolercontrol.enable = true;
}
