#!/bin/bash

# 设置代理服务器地址和端口号
proxy_host="127.0.0.1"
proxy_port=7890

# 设置Firefox配置文件的路径
profile_dir="/home/jccc/.mozilla/firefox/z2kc41sr.default-release"

# 设置代理设置的偏好设置文件路径
prefs_file="$profile_dir/prefs.js"

# 检查代理服务器地址和端口号是否为空
if [[ -z $proxy_host ]] || [[ -z $proxy_port ]]; then
  echo "请提供代理服务器地址和端口号。"
  exit 1
fi

# 检查Firefox配置文件是否存在
if [[ ! -d $profile_dir ]]; then
  echo "无法找到Firefox配置文件目录：$profile_dir"
  exit 1
fi

# 创建用于设置代理的临时JS文件
tmp_file=$(mktemp /tmp/proxy_script.XXXXXX.js)

# 生成设置代理的JS脚本内容
echo "user_pref(\"network.proxy.type\", 1);" >> $tmp_file
echo "user_pref(\"network.proxy.socks\", \"$proxy_host\");" >> $tmp_file
echo "user_pref(\"network.proxy.socks_port\", $proxy_port);" >> $tmp_file

# 将JS脚本内容追加到Firefox偏好设置文件
cat $tmp_file >> $prefs_file

# 清理临时JS文件
rm $tmp_file

echo "代理已成功设置为：$proxy_host:$proxy_port"

