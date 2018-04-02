opkg update
opkg list-upgradable | grep -Eo '^[^ ]+' | xargs opkg upgrade
opkg install coreutils
opkg install nano

#make status pages accessible without login
sed -i -e 's/20).index = true/20).sysauth = false/' /usr/lib/lua/luci/controller/admin/status.lua
rm -r /tmp/luci-*

cp -f index.html /www/index.html
