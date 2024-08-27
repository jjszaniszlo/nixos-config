finalDownload="$out"

tryFetch() {
  local url="$1"
  local curlexit=18;

  while [ $curlexit -eq 18 ]; do
    if echo $(curl $url); then
      return 1;
    else
      curlexit=$?;
    fi
  done
  return 0;
}

req=$(tryFetch 'https://wallhaven.cc/api/v1/w/m93rg9')
success=$?

if [success -eq 0]; then
  echo "failed GET request for api"
  exit 0
fi

path=$(echo $req | jq .data.path)
