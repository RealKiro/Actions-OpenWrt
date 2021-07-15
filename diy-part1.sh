#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 更改默认主题为第三方主题
#git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/mine/luci-theme-infinityfreedom.git
#sed -i 's/luci-theme-bootstrap/luci-theme-infinityfreedom/g' package/feeds/luci/luci/Makefile 
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/mine/luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' package/feeds/luci/luci/Makefile

# 复杂的AdGuardHome的openwrt的luci界面
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/mine/luci-app-adguardhome

# luci-app-bypass
# git clone https://github.com/garypang13/luci-app-bypass.git package/mine/luci-app-bypass
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}

# DiskMan for LuCI (WIP)
# git clone https://github.com/lisaac/luci-app-diskman.git package/mine/luci-app-diskman
# mkdir -p package/mine/parted && cp -i package/mine/luci-app-diskman/Parted.Makefile package/mine/parted/Makefile

# luci-app-dnsfilter
# git clone https://github.com/garypang13/luci-app-dnsfilter.git package/mine/luci-app-dnsfilter

# KPR
# git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/mine/luci-app-koolproxyR

# 锐捷
# git clone https://github.com/BoringCat/luci-app-mentohust.git package/mine/luci-app-mentohust

# Server酱
# git clone https://github.com/tty228/luci-app-serverchan.git package/mine/luci-app-serverchan

# luci-app-vssr
# git clone https://github.com/Leo-Jo-My/luci-app-vssr.git package/mine/luci-app-vssr

# FileBrowser
# git clone https://github.com/project-openwrt/FileBrowser.git package/mine/FileBrowser

# OpenClash
# git clone https://github.com/vernesong/OpenClash.git package/mine/OpenClash

# tencent DDNS
# git clone https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns.git package/mine/tencentcloud-openwrt-plugin-ddns

# 网易云音乐
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/mine/luci-app-unblockneteasemusic

# 网易云音乐GoLang版本
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic-go.git package/mine/luci-app-unblockneteasemusic-go

# 网易云音乐mini
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic-mini.git package/mine/luci-app-unblockneteasemusic-mini

# 管控上网行为
# git clone https://github.com/destan19/OpenAppFilter.git package/mine/OpenAppFilter

# Rclone-OpenWrt
# git clone https://github.com/ElonH/Rclone-OpenWrt.git package/mine/Rclone-OpenWrt
