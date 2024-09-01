{
  lib,
  fetchurl,
  stdenv,
  gtk3,
  webkit2,
  squashfsTools,
  makeWrapper,
  gnome3
} :
let
  version = "0.22";

  rev = "283";

  deps = [
    gtk3
    webkit2
  ];
in
stdenv.mkDerivation {
  pname = "icloud-for-linux";
  inherit version;

  src = fetchurl {
    url = "https://api.snapcraft.io/api/v1/snaps/download/HTbqvMiPyiMShkmshHnyEP2euCn0Uohq_${rev}.snap";
    sha512 = "fd3f3d7da7c59cf90ca5b1e4a8b931df962c3b55a60a02c5f17cd906cc52f4617d8163fae79f1fd82db80a08198178faff18cc958cc5fc2756df758b804d94e2";
  };

  buildInputs = [ squashfsTools makeWrapper ];

  dontStrip = true;
  dontPatchELF = true;

  unpackPhase = ''
    runHook preUnpack
    unsquashfs "$src" '/usr/share/icloud-for-linux' '/usr/bin/icloud-for-linux' '/meta/snap.yaml'
    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall

    libdir=$out/lib/icloud-for-linux
    mkdir -p $libdir
    mv ./usr/* $out/

    cp meta/snap.yaml $out

    rpath="$out/share/icloud-for-linux:$libdir"

    patchelf \
        --interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
        --set-rpath $rpath $out/share/icloud-for-linux/icloud-for-linux

    librarypath="${lib.makeLibraryPath deps}:$libdir"

    wrapProgram $out/share/icloud-for-linux/icloud-for-linux \
      --prefix LD_LIBRARY_PATH : "$librarypath" \
      -prefix PATH : "${gnome3.zenity}/bin"

    mkdir -p "$out/share/applications/"
    cp "$out/share/icloud-for-linux/icloud-for-linux.desktop" "$out/share/applications/"

    runHook postInstall
  '';

  meta = with lib; {
    homepage = "https://www.icloud.com";
    description = "Use ICloud on Linux";
    license = licenses.unfree;
    maintainers = with maintainers; [ marcustomlinson ];
    platforms = [ "x86_64-linux" ];
  };
}
