# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.129"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.129/kifaru-darwin-x64.zip"
      sha256 "5b2a7a1725f822ae8f4ccdb034baa3952420a2c2ad416aea1a8c93c5403e5c32"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.129/kifaru-darwin-arm64.zip"
      sha256 "9539e9864819422f7c09b5b42328fd403cb0b20f5ccb20ad682944b92bd3cd28"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.129/kifaru-linux-x64.tar.gz"
      sha256 "a573cac866fca32f9d0835408b306cb3ca11bd1734bc8418554c2c51c672c7d0"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.129/kifaru-linux-arm64.tar.gz"
      sha256 "a66cf1eff415b26d7c3587eff10f3b7526788158db995c7ea61044304de0eb57"
      def install
        bin.install "kifaru"
      end
    end
  end
end

