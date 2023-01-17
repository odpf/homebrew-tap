# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Compass < Formula
  desc "Metadata Discovery and Lineage Service"
  homepage "https://github.com/odpf/compass"
  version "0.3.1-rc1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/compass/releases/download/v0.3.1-rc1/compass_0.3.1-rc1_macos_x86_64.tar.gz"
      sha256 "ae2af649c0cfba31cc32a3ac9ddcc96554bc8bbdfe999bcaf0d35cdeb675dfbe"

      def install
        bin.install "compass"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/compass/releases/download/v0.3.1-rc1/compass_0.3.1-rc1_macos_arm64.tar.gz"
      sha256 "d541acb87100eca1fdd0c37810aee2260f0af04bd2ec12276ec0174a5045e9c5"

      def install
        bin.install "compass"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/compass/releases/download/v0.3.1-rc1/compass_0.3.1-rc1_linux_x86_64.tar.gz"
      sha256 "79d774f1fb81f6cd31b3fc7328c9551d3b4da3a415ed15cd55ccc4aed4a20b7a"

      def install
        bin.install "compass"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/compass/releases/download/v0.3.1-rc1/compass_0.3.1-rc1_linux_armv6.tar.gz"
      sha256 "aba583ef0ce168c363951858d77de5e47216ed4bc40e483184e939d6c86a040a"

      def install
        bin.install "compass"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/compass/releases/download/v0.3.1-rc1/compass_0.3.1-rc1_linux_arm64.tar.gz"
      sha256 "7b80d416c37c6457e4a4471ed3c24a5621c59c9c7007e2ae7459ce6e72cfbdd6"

      def install
        bin.install "compass"
      end
    end
  end
end
