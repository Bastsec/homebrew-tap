# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.146"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.146/kifaru-darwin-x64.zip"
      sha256 "e460c7f47965a6dd66fca1ac8ea3ff7df367b5238e61e0e5c434098f8e77f45c"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.146/kifaru-darwin-arm64.zip"
      sha256 "9472d791aacac6b7aa6da1e4f7920354b590acc5323c73f405cdea6879d366b4"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.146/kifaru-linux-x64.tar.gz"
      sha256 "e885d4094a37ef04978674aadf92bf6e2442a4b4c7a5e8b64e7a2a5609e20e5e"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.146/kifaru-linux-arm64.tar.gz"
      sha256 "39102fa9aafc054cd269f09c929bed4af7febeb8ea8b5f97880c06de0d4ba4c6"
      def install
        bin.install "kifaru"
      end
    end
  end
end

