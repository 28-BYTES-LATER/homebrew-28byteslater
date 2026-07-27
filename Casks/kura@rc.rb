cask "kura@rc" do
  version "1.0.0-rc.2"
  sha256 "a9ae15392ae709fab8fecbc8c10dcc9eed82d096e20da19a69272f7dd6c747c1"

  url "https://github.com/28-BYTES-LATER/kura/releases/download/v#{version}/kura-v#{version}-macos-universal2.zip"
  name "Kura"
  desc "Kura secure store files"
  homepage "https://github.com/28-BYTES-LATER/kura"

  conflicts_with cask: "kura"

  binary "kura"
  manpage "share/man/man1/kura.1"
  bash_completion "share/bash-completion/completions/kura"
end
