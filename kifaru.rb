# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.150"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.150/kifaru-darwin-x64.zip"
      sha256 "b68ddb7f116f5dd73617aeaf668cc6e83394e8084f589f5a0205dc1fa39aa142"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.150/kifaru-darwin-arm64.zip"
      sha256 "c45797799178befea37ad9dc978c994c3a30c2d72cd986a9829b5234ad61e9d6"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.150/kifaru-linux-x64.tar.gz"
      sha256 "60454f75d51add37dc92ebf05808d8dfc980b6e0cde425d86c247dbeb49688b9"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.150/kifaru-linux-arm64.tar.gz"
      sha256 "3f96df5f7e6e3f2f4bf348acb16f58134d23384c166501e0afc9bfaed1e8d1dd"
      def install
        bin.install "kifaru"
      end
    end
  end
end

