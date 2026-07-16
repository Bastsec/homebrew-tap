# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.143"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.143/kifaru-darwin-x64.zip"
      sha256 "b2d9bfbee25e4204641a560354ade6bbb27b3e2131075cbbfe9dbc5c318a770d"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.143/kifaru-darwin-arm64.zip"
      sha256 "9aa60676f25c5bc49dc4668af814cca871e0397da522c799bb98da43906814ce"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.143/kifaru-linux-x64.tar.gz"
      sha256 "6989694c5088e1c64ec5d012fce993d6a665613c0fd33aea4ffafd04e418faed"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.143/kifaru-linux-arm64.tar.gz"
      sha256 "8bf2680ce1ddeae07a03eb24ea0c62bd24013547c45c4f776b7a31f5880ea760"
      def install
        bin.install "kifaru"
      end
    end
  end
end

