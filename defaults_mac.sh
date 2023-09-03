#!/bin/sh

# --- Finder ---
# 隠しファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool true
# すべての拡張子のファイルを表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true
# 未確認ファイルを開くときの警告無効化
defaults write com.apple.LaunchServices LSQuarantine -bool "false"
# 表示形式をカラム表示
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv" && killall Finder


# --- Security ---

# --- Dock ---
# “自動的に非表示”をオン
defaults write com.apple.dock autohide -bool true
# 最近使ったアプリケーションを非表示
defaults write com.apple.dock show-recents -bool false
# アプリをしまうときのアニメーション
defaults write com.apple.dock "mineffect" -string "scale"
killall Dock

# --- SystemUIServer関係 ---
# 時計で日付を表示（例：9月20日(木) 23:00）
defaults write com.apple.menuextra.clock DateFormat -string 'EEE MMM d HH:mm:ss'
# バッテリーの割合（%）を表示
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
# スクリーンショットのドロップシャドウを付けない
defaults write com.apple.screencapture disable-shadow -bool true
killall SystemUIServer

# --- Safari ---
# アドレスバーに完全な URL を表示
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
# ファイルのダウンロード後に自動でファイルを開くのを無効化
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
# メニューバーに「開発」を表示
defaults write com.apple.Safari IncludeDevelopMenu -bool true
# デバッグメニューをオン
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
# ステータスバーを表示
defaults write com.apple.Safari ShowStatusBar -bool true
killall Safari

# ---　TextEdit　---
# リッチテキストから標準テキストに変更
defaults write com.apple.TextEdit RichText -int 0

echo "👍 MacOS setting is done!"
