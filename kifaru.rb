# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.151"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.151/kifaru-darwin-x64.zip"
      sha256 "bde4aafadfecd10373848746952fc0847f3fee1a3d9e87cca61d4bfa6d3032d2"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.151/kifaru-darwin-arm64.zip"
      sha256 "7f6fa89349ea0a01e87760f3605f8e7410bfb7f6e8b0200dc8f28607ce80d3d3"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.151/kifaru-linux-x64.tar.gz"
      sha256 "50db2cc7c5f2cddbfa2a837a4ea0153d7d0d47171d4aa2d1a0a691d4ded163ae"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.151/kifaru-linux-arm64.tar.gz"
      sha256 "52419f499f14cd188942e311e5d894ccb4a0037887f6b6ac6a48c26ce8dbc29f"
      def install
        bin.install "kifaru"
      end
    end
  end
end

