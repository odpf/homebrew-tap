# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool."
  homepage "https://github.com/odpf/guardian"
  version "0.2.7"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.7/guardian_0.2.7_macos_x86_64.tar.gz"
      sha256 "88cdbc27d79156e383c38ad5b44f710ebca814d3c45bfff9a48be13c8c89ee34"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/odpf/guardian/releases/download/v0.2.7/guardian_0.2.7_macos_arm64.tar.gz"
      sha256 "8cf239fa985dbc342499835909b05a3203a1d91fc378e3d18e1f1c369c4a40b6"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.7/guardian_0.2.7_linux_armv6.tar.gz"
      sha256 "becef8ae6092512bb11946127b281dd186f04b19dca08715d50b5566219bf57c"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/odpf/guardian/releases/download/v0.2.7/guardian_0.2.7_linux_arm64.tar.gz"
      sha256 "477e7f69932f6c2bd7fba277f8094fedd3e667326afa4cd8d67667782178fb4b"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/odpf/guardian/releases/download/v0.2.7/guardian_0.2.7_linux_x86_64.tar.gz"
      sha256 "59fb7c479a19829de5455e8b6738ccd6842f44791e0e80a3eccde94233dc1ac0"

      def install
        bin.install "guardian"
      end
    end
  end

  depends_on "git"
end
