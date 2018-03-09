# キーリピート速度を設定（小さい程速い）
defaults write -g KeyRepeat -int 1
# キーリピート開始速度の早さを設定（小さい程早い）
defaults write -g InitialKeyRepeat -int 12

# iterm2の設定
defaults import com.googlecode.iterm2 ./plist/iterm2.plist
# trackpadの設定
defaults import com.apple.AppleMultitouchTrackpad ./plist/trackpad.plist
# dockの設定
defaults import com.apple.dock ./plist/dock.plist
# betterTouchToolsの設定
defaults import com.hegenberg.BetterTouchTool ./plist/better_touch_tool.plist