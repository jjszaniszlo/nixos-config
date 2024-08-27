source $stdenv/setup

finalDownload="$out"

tryFetch() {
  local url="$1"
  echo
  echo "trying $url"
  local curlexit=18;

  ret=
  while [$curlExit -eq 18]; do
    local request = $(curl -C - --fail "$url")
    if [[ $request ]]; then
      ret=$request;
    else
      curlexit=@?;
    fi
  done
}

# downloadedFile="$out"
#
# tryDownload() {
#   local url="$1"
#   echo
#   echo "trying $url"
#   local curlexit=18;
#
#   success=
#
#   while [$curlExit -eq 18]; do
#     if "${curl[@]}" -C - --fail "$url" --output "$downloadedFile"; then
#       success=1
#       break
#     else
#       curlexit=@?;
#     fi
#   done
# }
