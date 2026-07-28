cask "kura@rc" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.0-rc.2"
  sha256 arm:          "a9ae15392ae709fab8fecbc8c10dcc9eed82d096e20da19a69272f7dd6c747c1",
         intel:        "a9ae15392ae709fab8fecbc8c10dcc9eed82d096e20da19a69272f7dd6c747c1",
         arm64_linux:  "cb58e11da46217b0b2bdd68cb4bca0b4c08dc2b2bb1b39517c9a9feddc29da6b",
         x86_64_linux: "16b3c10c56e6230b6747352f4b4bd2872ff33660e69d7088b8a09e8b54b78683"

  on_macos do
    url "https://github.com/28-BYTES-LATER/kura/releases/download/v#{version}/kura-v#{version}-macos-universal2.zip"
  end

  on_linux do
    url "https://github.com/28-BYTES-LATER/kura/releases/download/v#{version}/kura-v#{version}-linux-#{arch}.tar.gz"
  end

  name "Kura"
  desc "Kura secure store files"
  homepage "https://github.com/28-BYTES-LATER/kura"

  conflicts_with cask: "kura"

  binary "kura"
  manpage "share/man/man1/kura.1"
  bash_completion "share/bash-completion/completions/kura"
end
