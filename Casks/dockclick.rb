cask "dockclick" do
  version "1.3"
  sha256 "73ef074b0c593099d5a8ce734a3dde62ab3f72cfca7ae129ac930342e8e5ed57"

  url "https://github.com/xldrx/mac-dock-click/releases/download/v#{version}/DockClick-#{version}.zip"
  name "DockClick"
  desc "Open new windows by Cmd+clicking Dock icons"
  homepage "https://github.com/xldrx/mac-dock-click"

  depends_on macos: ">= :monterey"

  app "DockClick.app"

  zap trash: [
    "~/Library/Preferences/com.xldrx.dockclick.plist",
  ]
end
