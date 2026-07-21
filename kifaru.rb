# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.147"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.147/kifaru-darwin-x64.zip"
      sha256 "749c0aa4c9a716531223c1d04df9970fd93d9879d932543837b277b03cc7f1aa"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.147/kifaru-darwin-arm64.zip"
      sha256 "031255dde62e0bcdc4de03b9ccc7f6b137e9ff4bf220d9acc9fbecbcfb1c1140"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.147/kifaru-linux-x64.tar.gz"
      sha256 "96986bb90db6afcf15cf901931f56308fde22dd46970e23f224821005d269746"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.147/kifaru-linux-arm64.tar.gz"
      sha256 "b4c66c869cc7fe95a0cfc32a97b964569b74bdd4653fcc0e52c1db550765666c"
      def install
        bin.install "kifaru"
      end
    end
  end
end

