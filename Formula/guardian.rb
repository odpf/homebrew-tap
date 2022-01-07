# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool."
  homepage "https://github.com/odpf/guardian"
  version "0.2.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.0/guardian_0.2.0_macos_x86_64.tar.gz"
      sha256 "baa9f222bcff92b7734acd946bea6303052ab6a4f8b05a245b0e07f8799b50cf"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/guardian/releases/download/v0.2.0/guardian_0.2.0_macos_arm64.tar.gz"
      sha256 "75dfedec67a3b0e8cd328a90177c8b7e6f51d3c2afc23d2e46cffd1636110b79"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.0/guardian_0.2.0_linux_armv6.tar.gz"
      sha256 "40fbb4f1cc62daa0bba114f3a5630d06cacd7cd6e6c0361a25f0ac6046201589"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.0/guardian_0.2.0_linux_arm64.tar.gz"
      sha256 "fb914edc6316fc2547888f19e77a93f22e3ad134c057b1aded0036a617c69ba9"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.0/guardian_0.2.0_linux_x86_64.tar.gz"
      sha256 "3a071a6b7a6a3050ed1a8432b4e5007cf99b7fb7e23e943b25ebafff99c49bfc"

      def install
        bin.install "guardian"
      end
    end
  end

  depends_on "git"
end
