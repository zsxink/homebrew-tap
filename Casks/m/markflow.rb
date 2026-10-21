# typed: true
# frozen_string_literal: true

cask "markflow" do
  version "0.1.2"

  on_arm do
    url "https://github.com/zsxink/MarkFlow/releases/download/v#{version}/MarkFlow_#{version}_aarch64.dmg",
        verified: "github.com/zsxink/MarkFlow/"
    sha256 "451793396e22e3710622ae88b3b71f1acb2320ad6f8089eea871de8715e8239d"
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
