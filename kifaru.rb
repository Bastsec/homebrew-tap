# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.139"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.139/kifaru-darwin-x64.zip"
      sha256 "0f47e47a462e10867782fc91d81bbde357f9eafa7dc9bf22952065837565351a"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.139/kifaru-darwin-arm64.zip"
      sha256 "f91e7613038324f8bd9bfe38cf5f5cfa3207231b9bc4100197d0025a14f07e6a"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.139/kifaru-linux-x64.tar.gz"
      sha256 "eb9a59165736193dbcc2b99f344e7c9c3d5cd0175485e50aa7b24a38ebafd4d3"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.139/kifaru-linux-arm64.tar.gz"
      sha256 "2fc8a50eddfbd288169f4175ddfadba8194d1d6761edd9630706e3f0dc9fc98f"
      def install
        bin.install "kifaru"
      end
    end
  end
end

