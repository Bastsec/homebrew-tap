# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.134"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.134/kifaru-darwin-x64.zip"
      sha256 "f36d54ccb7c945bd19324c05d907fb8e12dbac543302d88082ce87871931498b"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.134/kifaru-darwin-arm64.zip"
      sha256 "20e3a29c8ce1a3c4493ae9b7e64196d14b2fb426aefdaea18caec645d6058423"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.134/kifaru-linux-x64.tar.gz"
      sha256 "c1b6b6c657762adb14a9d4b883edac3f7517ade4d582507e2ee1c4e3cea798a2"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.134/kifaru-linux-arm64.tar.gz"
      sha256 "fca6c2b83637322cc00a4ee7e99fd37281fffc71216a482a90ee881807ce629f"
      def install
        bin.install "kifaru"
      end
    end
  end
end

