cask "kura@rc" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.0-rc.3"
  sha256 arm:          "279375b5da60461e01544dc86d82b622847520aaa340c62ab68147619352a5e1",
         intel:        "279375b5da60461e01544dc86d82b622847520aaa340c62ab68147619352a5e1",
         arm64_linux:  "d5e1b7a7679a13619247573f1007772c1544de621a288a525da3c4d080500563",
         x86_64_linux: "b29ac33e6ff945cd93a0c99829c36f7df9ace8ec1533ce2d0d8625cd44792d99"

  on_macos do
    url "https://github.com/28-BYTES-LATER/kura/releases/download/v#{version}/kura-v#{version}-macos-universal2.zip"
  end

  on_linux do
    url "https://github.com/28-BYTES-LATER/kura/releases/download/v#{version}/kura-v#{version}-linux-#{arch}.tar.gz"
  end

  name "Kura"
  desc "Read secrets from the Kura secure store"
  homepage "https://github.com/28-BYTES-LATER/kura"

  conflicts_with cask: "kura"

  binary "kura"
  manpage "share/man/man1/kura.1"
  bash_completion "share/bash-completion/completions/kura"
end
