# typed: true
# frozen_string_literal: true

cask "markflow" do
  version "0.1.0"

  on_arm do
    url "https://github.com/zsxink/MarkFlow/releases/download/v#{version}/MarkFlow_#{version}_aarch64.dmg",
        verified: "github.com/zsxink/MarkFlow/"
    sha256 "8653027e4a6ad68658f8683024beb4002bc67070cf66568832947f9654d9f320"
  end
  on_intel do
    url "https://github.com/zsxink/MarkFlow/releases/download/v#{version}/MarkFlow_#{version}_x86_64.dmg",
        verified: "github.com/zsxink/MarkFlow/"
    sha256 "8653027e4a6ad68658f8683024beb4002bc67070cf66568832947f9654d9f320"
  end

  name "MarkFlow"
  desc "Modern Markdown editor with WYSIWYG and source mode"
  homepage "https://github.com/zsxink/MarkFlow"

  livecheck do
    url :stable
    strategy :github_latest
  end

  auto_updates true

  app "MarkFlow.app"

  uninstall quit: "com.markflow.editor"

  zap trash: [
    "~/Library/Application Support/com.markflow.editor",
    "~/Library/Caches/com.markflow.editor",
    "~/Library/HTTPStorages/com.markflow.editor",
    "~/Library/Preferences/com.markflow.editor.plist",
    "~/Library/Saved Application State/com.markflow.editor.savedState",
    "~/Library/Logs/MarkFlow",
  ]
end
