# typed: false
# frozen_string_literal: true

class Kifaru < Formula
  desc "Autonomous security testing agent for the terminal."
  homepage "https://github.com/Bastsec/kifaru"
  version "1.0.141"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.141/kifaru-darwin-x64.zip"
      sha256 "4b2118db1cc0274c9bffdac8ee477fc096ba98b88f10eb398bfabaac77569428"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.141/kifaru-darwin-arm64.zip"
      sha256 "e6204032fce4e88e28fc46735d4f391dc9ad86f4b3a127b18bb23c56ac6dc0ea"
      def install
        bin.install "kifaru"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.141/kifaru-linux-x64.tar.gz"
      sha256 "461fda5f42d848f449bc2f71c8f13701e963bdab8350e58d59ec143bae7d2230"
      def install
        bin.install "kifaru"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Bastsec/kifaru/releases/download/v1.0.141/kifaru-linux-arm64.tar.gz"
      sha256 "72f79c65c9dcd89a9ba988ca0e3424ce471719491a543587db95e2e5cf41bf22"
      def install
        bin.install "kifaru"
      end
    end
  end
end

