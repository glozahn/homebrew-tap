cask "md-lite" do
  version "0.3.7"
  sha256 "0b5b6a6d6467d522930a446572a7da903845cc269220b1a9ad45f1efae42b297"

  url "https://github.com/glozahn/md-lite/releases/download/v#{version}/MD-Lite-#{version}-arm64.dmg"
  name "MD Lite"
  desc "Lightweight native Markdown reader and editor"
  homepage "https://github.com/glozahn/md-lite"

  livecheck do
    url :url
    strategy :github_latest
  end

  # MD Lite updates itself; Homebrew does not need to.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "MD Lite.app"

  zap trash: [
    "~/Library/Application Support/MD Lite",
    "~/Library/Caches/MD Lite",
    "~/Library/Preferences/org.mdlite.reader.plist",
    "~/Library/Saved Application State/org.mdlite.reader.savedState",
  ]
end
