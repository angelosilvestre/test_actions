CONTENT=$(cat $1)

curl -X POST -d "api_paste_expire_date=1H" -d "api_dev_key=$PASTEBIN_API_DEV_KEY" --data-urlencode "api_paste_code=$CONTENT" -d 'api_option=paste' -d "api_paste_name=$1" "https://pastebin.com/api/api_post.php"