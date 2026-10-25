# frozen_string_literal: true

cask "musictag" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "357a647becf1befe440e88d5b42c3b92c865b35aa00edf85b14cff5d2c7b89ed",
         intel: "3bf98f0f6ea5e186bf6cee9f80f71d1262298090d4a832c3a2b6d5051bb4e519"

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
