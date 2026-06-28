# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.130"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.130/kifaru-darwin-x64.zip"
      sha256 "b8f73803487edf3293b500a738f0e9ca66b28665a9c444dafeaabf24c3294a2e"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.130/kifaru-darwin-arm64.zip"
      sha256 "7a8f0635e79fc6437f2e8b587d18591a52fd5f3ae082d93f6984f4c98dbdc0cd"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.130/kifaru-linux-x64.tar.gz"
      sha256 "b50c413f868f3cf262e53c580804a49be9a1d482c3444b0087e485bf8e98a6b1"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.130/kifaru-linux-arm64.tar.gz"
      sha256 "d7b7d7d9eb471b4bdd5dc0f9309a327d8dc74a002aef821b8827e0ee806339b9"
      def install
        bin.install "kifaru"
      end
    end
  end
end

