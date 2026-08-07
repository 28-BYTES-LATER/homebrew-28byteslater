cask "kura@rc" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.0-rc.4"
  sha256 arm:          "123f0cff57a81b5c2e04ac5d41a7d0165cab01cd07e081a4c53766a70adf4634",
         intel:        "123f0cff57a81b5c2e04ac5d41a7d0165cab01cd07e081a4c53766a70adf4634",
         arm64_linux:  "d5bdc39be64c8c7b69875864aa10c8b9aa228977bbf79554d01b4927211e3b6d",
         x86_64_linux: "688a06f227fb97b746ce9e5054d29ad5587221522e980dcc6e56319d279dc899"

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
