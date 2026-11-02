# frizurd's Homebrew tap

Mac apps from my projects.

## Menu Veil

Hide the left menu bar menus and bring them back on hover.

```sh
brew install --cask frizurd/tap/menu-veil
```

Homebrew 7 or newer requires a trust step before installation:

```sh
brew tap frizurd/tap
brew trust --cask frizurd/tap/menu-veil
```

Then run the install command above.

Open Menu Veil from Applications and follow its setup window. The release is signed with Developer ID and notarized by Apple.

Source and setup details: [frizurd/menu-veil](https://github.com/frizurd/menu-veil).

## AQI Bar

US air quality in the macOS menu bar, with city search and colored readings.
Requires Apple silicon and macOS 13 or later.

```sh
brew tap frizurd/tap
brew install --cask frizurd/tap/aqi-bar
```

Homebrew 7 or newer requires `brew trust --cask frizurd/tap/aqi-bar` after tapping and before installing.

Open AQI Bar from Applications, enter your free IQAir Community API key, and choose a city.

Source and setup details: [frizurd/aqi-bar](https://github.com/frizurd/aqi-bar).

## Tuck

Hide the menu bar icons you don't need to see all the time. Drag them left of the chevron and click it to bring them back.

```sh
brew install --cask frizurd/tap/tuck
```

With Homebrew 7 or newer, trust it first:

```sh
brew tap frizurd/tap
brew trust --cask frizurd/tap/tuck
```

Open Tuck from Applications. On macOS 27, allow Accessibility in Tuck's Settings so icons hide without the « marker. The release is signed with Developer ID and notarized by Apple.

Source and details: [frizurd/tuck](https://github.com/frizurd/tuck).
