# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.136"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.136/kifaru-darwin-x64.zip"
      sha256 "cf05493a3bbbe0cea5c9dae10a40c58957dd2807538f822ed80bace2a115a625"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.136/kifaru-darwin-arm64.zip"
      sha256 "d7dab418e72c087cbf85e6cd23761449c68271148d599b8b0949c329ab1d5519"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.136/kifaru-linux-x64.tar.gz"
      sha256 "2906d4984d0e61429430a20cc61f5840b06c514fcf72e96f0bc67d9bc0d8d345"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.136/kifaru-linux-arm64.tar.gz"
      sha256 "e83343d66d4cd93b7e51e7a72603857c29fe5ea315f56165c206ccbab9d923f7"
      def install
        bin.install "kifaru"
      end
    end
  end
end

