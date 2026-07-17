# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.145"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.145/kifaru-darwin-x64.zip"
      sha256 "62b7b8443f7118a6a25774f2f58236b789ddeb9349cba286faaddb3c086e8664"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.145/kifaru-darwin-arm64.zip"
      sha256 "76972ad817fae0e692bf6edf01b02fb58deb83b28db687c8e701982d41ac95d1"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.145/kifaru-linux-x64.tar.gz"
      sha256 "95fed1fbc2751d5e087eba488dabb49c14efcda2e209ad86ace9650ddcdb0441"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.145/kifaru-linux-arm64.tar.gz"
      sha256 "a933b769c7bb224126ef1ba81ee4243e5f7bb4c2bd915c0976e9d1ec8d417b93"
      def install
        bin.install "kifaru"
      end
    end
  end
end

