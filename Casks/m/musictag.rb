# frozen_string_literal: true

cask "musictag" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "37a5432545fba9c0ca84135b72284e478b4f065e36aa37ab41a9c41b263b1070",
         intel: "d74d25e9c64527a83b9a459132cd25d09c01b9b3e370439158047dd639f151c6"

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
