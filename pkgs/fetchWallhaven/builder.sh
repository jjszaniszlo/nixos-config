source $stdenv/setup

curl2=(
  curl
)

if ! [ -f "$SSL_CERT_FILE" ]; then
    curl+=(--insecure)
fi

finalDownload="$out"

tryFetch() {
  if echo $(curl $1); then return 1; fi;
  return 0;
}

tryImgDownload() {
    local url="$1"
    echo
    echo "trying to download image: $url"
    local curlexit=18;

    hash=$(nix-prefetch-url $url --type sha256 --name $name)

    success=
    while [ $curlexit -eq 18 ]; do
      if "${curl[@]}" -C - "$url" --output "$finalDownload"; then
          success=1
          echo $hash
          break
       else
          curlexit=$?;
       fi
    done
}

req=$(tryFetch "$reqURL")
success=$?

if [ $success -eq 0 ]; then
  echo "failed GET request for api"
  exit 1
fi

path=$(echo $req | jq .data.path | tr -d '"')

success=
tryImgDownload $path
if test -n "$success"; then 
  echo "successfully downloaded image!"
  exit 0
fi

echo "failed to download image"
exit 1
