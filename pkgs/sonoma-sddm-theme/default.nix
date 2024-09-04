{pkgs}:
pkgs.stdenv.mkDerivation {
  name = "sonoma-sddm-theme";
  src = pkgs.fetchFromGitHub {
    owner = "zayronxio";
    repo = "Sonoma-SDDMT";
    rev = "b418431ae350db313148db19a62b858e2e2ad3a5";
    sha256 = "1ry8yhvzwnxx0fj7dzhvbb5nkb15qgyn5hx1fpw71w3acj5sl3lz";
  };
  installPhase = ''
    mkdir -p $out
    cp -R ./* $out/
  '';
}
