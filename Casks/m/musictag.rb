# frozen_string_literal: true

cask "musictag" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "176700848773c53f9949c046ae57fbba3cdb43fa93d60123e4f539afc252411f",
         intel: "52aa1e29cc88730af90bf30fdff52f0dfad8a6cae13633dd1c631371e5656d2f"

  url "https://github.com/zsxink/MusicTag/releases/download/v#{version}/MusicTag_#{version}_#{arch}.dmg"
  name "MusicTag"
  desc "Edit metadata, cover art and lyrics for local music files"
  homepage "https://github.com/zsxink/MusicTag"

  livecheck do
    url "https://github.com/zsxink/MusicTag/releases/latest"
    strategy :github_latest
  end

  app "MusicTag.app"

  uninstall quit: "com.musictag.desktop"

  zap trash: [
    "~/Library/Application Support/MusicTag",
    "~/Library/Caches/com.musictag.desktop",
    "~/Library/WebKit/com.musictag.desktop",
  ]
end
