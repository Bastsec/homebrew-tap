# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.144"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.144/kifaru-darwin-x64.zip"
      sha256 "4f75131d61a32e1e981b55a0357a642ae97b11a692c5400c274a6aa78abdfb2e"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.144/kifaru-darwin-arm64.zip"
      sha256 "faabe8b0d62d8a1049a32694966eff140e021be0564243d54968dd77a7f3ffc6"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.144/kifaru-linux-x64.tar.gz"
      sha256 "be434a4a2e9eb55bf152ce9f9c5b80043d061c57f49d9c51339f671cc29b16e2"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.144/kifaru-linux-arm64.tar.gz"
      sha256 "04acef0e63c3e3133ca7dc8c91f747e619af2779e45c6e433d6aaa0d9cb70e63"
      def install
        bin.install "kifaru"
      end
    end
  end
end

