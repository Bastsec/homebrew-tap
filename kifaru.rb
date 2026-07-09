# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.138"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.138/kifaru-darwin-x64.zip"
      sha256 "b226e4435bab979081f40db206c4b567c55c00c195e4e86e4f899e1f07ee6cff"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.138/kifaru-darwin-arm64.zip"
      sha256 "13a38af3adb62ed5451dab0664fc37a38a90e05afacf1c1fd7bb13532125e5fc"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.138/kifaru-linux-x64.tar.gz"
      sha256 "3dc5992fb3d475f49c658f9e4c6a3e8977398ed0b79c1b7cb048701e770cea70"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.138/kifaru-linux-arm64.tar.gz"
      sha256 "643555c3e9e4b425b18c8ccb246c4117963fc96ff2b519efc99732108493c607"
      def install
        bin.install "kifaru"
      end
    end
  end
end

