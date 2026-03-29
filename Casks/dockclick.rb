cask "dockclick" do
  version "1.2"
  sha256 "52e72b815872f1421f07c115b4dcacf7611349c31d806f2c84eba452aa561c36"

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
