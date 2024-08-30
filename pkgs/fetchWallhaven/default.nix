{
  lib,
  stdenvNoCC,
  curl,
  jq,
  cacert ? null
}: {
  id ? "",
  name ? "",
  sha256 ? "",
} : let
  _id = if id != "" then id
    else throw "id cannot be an empty string!";
  _name = if name != "" then name
    else throw "name cannot be an empty string!";
in stdenvNoCC.mkDerivation {
  name = _name;
  builder = ./builder.sh;
  nativeBuildInputs = [ curl jq ];

  reqURL = "https://wallhaven.cc/api/v1/w/${_id}";
  
  nixpkgsVersion = lib.trivial.release;

  SSL_CERT_FILE = if (sha256 == "" || sha256 == lib.fakeSha256)
                  then "${cacert}/etc/ssl/certs/ca-bundle.crt"
                  else "/no-cert-file.crt";

  preferLocalBuild = true;

  # specify the content hash of this derivations output
  outputHashAlgo = "sha256";
  outputHash = sha256;
}
