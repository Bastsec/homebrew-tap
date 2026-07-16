# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.142"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.142/kifaru-darwin-x64.zip"
      sha256 "bc1834f18c5a547e071316a65f6a3e5d5bfab1810d0f9fd3755d10751c85071e"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.142/kifaru-darwin-arm64.zip"
      sha256 "2a02428593cb2f605b2614ff7a979a6ab789fe0d907b58ec6d302499144ad3a8"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.142/kifaru-linux-x64.tar.gz"
      sha256 "dc1bf4588e47aa22118ee5f177da4b67b759d4b97e15979c03184ac9360958dd"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.142/kifaru-linux-arm64.tar.gz"
      sha256 "1a6db9ad3f3eec1c1deddb7ae6a19aa4f9689a71b92cd1f1565a7b4af63cfd5c"
      def install
        bin.install "kifaru"
      end
    end
  end
end

