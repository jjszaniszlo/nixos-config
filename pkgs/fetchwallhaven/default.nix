{
  lib,
  stdenvNoCC,
  curl,
  jq
}: {
  id ? "",

  url ? "",
  urls ? []
} : let
  urlList =
    if urls != [] && url == "" then
      (if lib.isList urls then urls
        else throw "'urls' is not a list")
    else if urls == [] && url != "" then
      (if lib.isString url then [url]
        else throw "'url' is not a string")
    else
      throw "'url' or 'urls' needs to be set";

in stdenvNoCC.mkDerivation {
  name = id;
  builder = ./builder.sh;
  nativeBuildInputs = [ curl jq ];

  urls = urlList;
  
  nixpkgsVersion = lib.trivial.release;
}
