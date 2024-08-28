{
  lib,
  stdenvNoCC,
  curl,
  jq,
  tr,
}: {
  id ? "",
  name ? "",
  sha256 ? "",
} : let
  _id = if id != "" then id
    else throw "id cannot be an empty string!";
  _name = if name != "" then name
    else throw "name cannot be an empty string!";
  _sha256 = if sha256 != "" then sha256
    else throw "sha256 cannot be an empty string!";
in stdenvNoCC.mkDerivation {
  name = _name;
  builder = ./builder.sh;
  nativeBuildInputs = [ curl jq tr ];

  reqURL = "https://wallhaven.cc/api/v1/w/${_id}";
  
  nixpkgsVersion = lib.trivial.release;

  # specify the content hash of this derivations output
  outputHashAlgo = "sha256";
  outputHash = _sha256;
}
