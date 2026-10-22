# frozen_string_literal: true

cask "musictag" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "001e054a33e69b3a6b7064aab7b65a7f166b650e8f956e37fbdf22467405f827",
         intel: "c96c2ca90a12fb70f6f9b44795efa4e148f53a1ea741189cfee69fb08f348b2a"

  url "https://github.com/zsxink/MusicTag/releases/download/v#{version}/MusicTag_#{version}_#{arch}.dmg"
  name "MusicTag"
  desc "Edit metadata, cover art and lyrics for local music files"
  homepage "https://github.com/zsxink/MusicTag"

  app "MusicTag.app"
end
