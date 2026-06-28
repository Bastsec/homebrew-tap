# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.131"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.131/kifaru-darwin-x64.zip"
      sha256 "57ce2b79347e92601dfb691487d8257d939429928f96653fb524645629375769"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.131/kifaru-darwin-arm64.zip"
      sha256 "89c2e63f5105e6ff979d7acd95361f437f67b2c938321e1edf54c4603677f736"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.131/kifaru-linux-x64.tar.gz"
      sha256 "e745fb7cc63ab7a18b056c5104d0da4642007e67892bfb1f553b018f70499f27"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.131/kifaru-linux-arm64.tar.gz"
      sha256 "858056466b0a7ab6574aa894b4f88e801813ba3699aa974e1e7e7a46e4679251"
      def install
        bin.install "kifaru"
      end
    end
  end
end

