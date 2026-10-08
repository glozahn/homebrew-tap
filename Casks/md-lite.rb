cask "md-lite" do
  version "0.4.2"
  sha256 "1b7f64ceb7183ea758ef598562738943e72c142597a27dc1fb4bac53eff5ca79"

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
