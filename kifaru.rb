# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.140"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.140/kifaru-darwin-x64.zip"
      sha256 "adaa8cecf57b722c6d36e1f62cafb031f7e31a518b86cb176290bda91431d119"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.140/kifaru-darwin-arm64.zip"
      sha256 "a62e0a86af3d692947a954d81d30b8ecab0d36adf7d49c0c5662174009282887"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.140/kifaru-linux-x64.tar.gz"
      sha256 "dd09595a7aa229756b88b939c90a0093fafafb3cc52d1148b3415e0b1bd86815"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.140/kifaru-linux-arm64.tar.gz"
      sha256 "5206d067cb8ea8d6dfb4a480a25f6c8533e323df632e0f1d8a509586e0390a40"
      def install
        bin.install "kifaru"
      end
    end
  end
end

