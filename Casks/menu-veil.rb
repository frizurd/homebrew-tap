cask "menu-veil" do
  version "0.2.0"
  sha256 "32ae0964ae9d47529be8b41cfead5a295114e8e19791b2f1f7f6e493f27e6dce"

  url "https://github.com/frizurd/menu-veil/releases/download/v#{version}/Menu-Veil-#{version}.zip"
  name "Menu Veil"
  desc "Hide left-side menu bar menus and reveal them on hover"
  homepage "https://github.com/frizurd/menu-veil"

  depends_on macos: :sonoma

  app "Menu Veil.app"

  uninstall quit: "local.frizurd.menu-veil-prototype"

  zap trash: "~/Library/Preferences/local.frizurd.menu-veil-prototype.plist"

  caveats <<~EOS
    Open Menu Veil from Applications, then follow its setup window.
    Allow its menu-detection permission in Privacy & Security.
    This tap distributes the Developer ID signed and notarized release.
  EOS
end
