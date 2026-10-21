# typed: true
# frozen_string_literal: true

cask "markflow" do
  version "0.1.1"

  on_arm do
    url "https://github.com/zsxink/MarkFlow/releases/download/v#{version}/MarkFlow_#{version}_aarch64.dmg",
    sha256 "f1ae2fd1e0d00c5be046d2e0c6a16fce7c38a263328e81b0579a9cef35ed256b"
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
