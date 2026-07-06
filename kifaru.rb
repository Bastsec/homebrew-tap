# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.137"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.137/kifaru-darwin-x64.zip"
      sha256 "e7949762408a999621a64897c323ab6fe966eea012e2ed2cee689e57d381f5f4"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.137/kifaru-darwin-arm64.zip"
      sha256 "c62b23a97c741f659ee7c1ccafac9c732a3f69ba7b286d52f5d3940749838609"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.137/kifaru-linux-x64.tar.gz"
      sha256 "5d9fdff0965f14e4c256c62fde513ed5ce90a928a9228ffabbe8b99ca55c5810"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.137/kifaru-linux-arm64.tar.gz"
      sha256 "d7f439ac7a4ef0e5103e39e080722454c3eee99d1a53699ae54ad5a0cdd7a671"
      def install
        bin.install "kifaru"
      end
    end
  end
end

