cask "tuck" do
  version "1.1.0"
  sha256 "c3e7c4ebadbb82c4935948d37e98d98671176c366adfc25f5d84381b41325251"

  url "https://github.com/frizurd/tuck/releases/download/v#{version}/Tuck-#{version}.zip"
  name "Tuck"
  desc "Hide menu bar icons you don't need to see all the time"
  homepage "https://github.com/frizurd/tuck"

  depends_on macos: :sonoma

  app "Tuck.app"

  uninstall quit: "com.frizurd.tuck"

  zap trash: "~/Library/Preferences/com.frizurd.tuck.plist"

  caveats <<~EOS
    Open Tuck from Applications. Hold ⌘ and drag the icons you want hidden
    to the left of Tuck's chevron.
    On macOS 27, allow Accessibility in Tuck's Settings so macOS can hide
    icons cleanly, without the « overflow marker.
    This tap distributes the Developer ID signed and notarized release.
  EOS
end
