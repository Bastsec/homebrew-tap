# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.132"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.132/kifaru-darwin-x64.zip"
      sha256 "dff0e0950f272f2da4986fe0340ee6dfb63fd0f06e7e27cf9b41fc3d17816700"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.132/kifaru-darwin-arm64.zip"
      sha256 "a8463192e19dcff2ded190ef58a3658a54bddf72e675c80d683480e173fbde7d"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.132/kifaru-linux-x64.tar.gz"
      sha256 "44089e4533f7a523d7494a75ad2480bcb8a6b144e9464bae1a9ad9b02380725f"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.132/kifaru-linux-arm64.tar.gz"
      sha256 "945a2fdb5832a4e8e7dcd8fcd462f6f176b31019fa94fa6b585a02cd12f55b79"
      def install
        bin.install "kifaru"
      end
    end
  end
end

