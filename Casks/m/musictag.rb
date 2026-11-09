# frozen_string_literal: true

cask "musictag" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "1e7927332887c3f33a4ba1bacdd1559bbed7069fb4d173409247ff00edaf4c27",
         intel: "6d8e46a17cb46762091328715a517519bbb1859a0114505a44634555b3ebe113"

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
