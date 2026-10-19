cask "convert" do
  version "0.3.0"
  sha256 "d2323710b99d6b24ac5bdc310fe176b155674d5928b0ca4e336c5ee76899458e"

  url "https://github.com/Ricardobroeders/convert/releases/download/convert-v#{version}/Convert-#{version}.dmg"
  name "Convert"
  desc "Radial menu to convert and edit files from Finder"
  homepage "https://github.com/Ricardobroeders/convert"

  depends_on macos: :sonoma

  app "Convert.app"

  # Convert isn't notarized yet (no Apple Developer ID), so macOS would block its first launch
  # until each person clicks "Open Anyway" in System Settings. Clearing the download quarantine
  # skips that step. Delete this block once releases are signed and notarized.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Convert.app"],
                          writable_paths: ["Convert.app"], writable_base: :appdir
  end

  uninstall quit: "nl.ricardobroeders.Convert"

  zap trash: "~/Library/Preferences/nl.ricardobroeders.Convert.plist"

  caveats <<~TEXT
    Open Convert from Applications; it lives in the menu bar.
    For middle-click on files, allow Convert in
      System Settings › Privacy & Security › Accessibility
  TEXT
end
