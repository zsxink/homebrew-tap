# typed: true
# frozen_string_literal: true

cask "markflow" do
  version "0.1.3"

  on_arm do
    url "https://github.com/zsxink/MarkFlow/releases/download/v#{version}/MarkFlow_#{version}_aarch64.dmg",
        verified: "github.com/zsxink/MarkFlow/"
    sha256 "e1168a5d2cd6e961a958012814fdfdc9ed2d5c4a2931666dc0b32bfee0aa9673"
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
