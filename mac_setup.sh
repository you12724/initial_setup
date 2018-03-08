# キーリピート速度を設定（小さい程速い）
defaults write -g KeyRepeat -int 1
# キーリピート開始速度の早さを設定（小さい程早い）
defaults write -g InitialKeyRepeat -int 12

# iterm2の設定
defaults import com.googlecode.iterm2 ./iterm2.plist
# trackpadの設定
defaults import com.apple.AppleMultitouchTrackpad ./trackpad.plist
# dockの設定
defaults import com.apple.dock ./dock.plist