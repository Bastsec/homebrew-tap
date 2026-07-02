# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.133"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.133/kifaru-darwin-x64.zip"
      sha256 "b54d6a2b373aad31bda073ef770c3dc8bf9ac4010b07b0ba2624d7c09ccd8b3d"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.133/kifaru-darwin-arm64.zip"
      sha256 "d012af066632576875d20e438a7d1a85c06ff23d053608b90463ee7536f628a6"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.133/kifaru-linux-x64.tar.gz"
      sha256 "5a5ca66b4453328698120f4af0f17d169a82aff7e8866763da67e50e8c679417"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.133/kifaru-linux-arm64.tar.gz"
      sha256 "9232bddaaa9052849d5b8f6324816523a4ffd16980af512cc329211ec27f3a76"
      def install
        bin.install "kifaru"
      end
    end
  end
end

