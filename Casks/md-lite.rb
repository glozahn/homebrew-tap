cask "md-lite" do
  version "0.4.0"
  sha256 "9fd84eae1c03b9a80363f1fb940ba7bc95cb5f50747f900cb78339451890dcc6"

  url "https://github.com/glozahn/md-lite/releases/download/v#{version}/MD-Lite-#{version}-universal.dmg"
  name "MD Lite"
  desc "Lightweight native Markdown reader and editor"
  homepage "https://github.com/glozahn/md-lite"

  livecheck do
    url :url
    strategy :github_latest
  end

  # MD Lite updates itself; Homebrew does not need to.
  auto_updates true
  depends_on macos: :sonoma

  app "MD Lite.app"

  zap trash: [
    "~/Library/Application Support/MD Lite",
    "~/Library/Caches/MD Lite",
    "~/Library/Preferences/org.mdlite.reader.plist",
    "~/Library/Saved Application State/org.mdlite.reader.savedState",
  ]
end
