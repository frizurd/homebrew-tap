cask "aqi-bar" do
  version "1.0.1"
  sha256 "87a5a520ef80b4f9901925f7f69e8b9ffc5243e49dc83e3542021579b9f29fff"

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
