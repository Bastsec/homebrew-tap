# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.135"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.135/kifaru-darwin-x64.zip"
      sha256 "b8a9e73efd4d4cec1db8cd7a36e73a3eb91d8cd67ba67a3226617494875ce1b9"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.135/kifaru-darwin-arm64.zip"
      sha256 "2cbc59ed62ff853569d051516ae1b1174d27085b544ec713a206e9353563e6fb"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.135/kifaru-linux-x64.tar.gz"
      sha256 "54f1d5a36114afcc360b5d2f100730dbaf35bf8106fbedc82d2a25a700796d01"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.135/kifaru-linux-arm64.tar.gz"
      sha256 "fb6daf4b9a1f365efd6f60f951a0a57b07d651412f45561947505f9d61d6439f"
      def install
        bin.install "kifaru"
      end
    end
  end
end

