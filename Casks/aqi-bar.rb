cask "aqi-bar" do
  version "1.0.1"
  sha256 "2eeb52125d3fea80e0353e0bc82bc677dd4c5791455e6bcdc0e431c2a11fbe20"

  url "https://github.com/frizurd/aqi-bar/releases/download/v#{version}/AQI-Bar-#{version}-macOS-arm64.zip"
  name "AQI Bar"
  desc "US air quality in the menu bar"
  homepage "https://github.com/frizurd/aqi-bar"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "AQI Bar.app"

  uninstall quit: "local.frizurd.aqibar"

  zap trash: "~/Library/Preferences/local.frizurd.aqibar.plist"

  caveats <<~EOS
    Open AQI Bar from Applications, enter your IQAir Community API key,
    and choose a city. Add AQI Bar in System Settings > General > Login Items
    to launch it automatically when you log in.
  EOS
end
