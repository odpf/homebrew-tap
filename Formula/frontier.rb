# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Frontier < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/raystack/frontier"
  version "0.8.27"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raystack/frontier/releases/download/v0.8.27/frontier_Darwin_arm64.tar.gz"
      sha256 "b2850d6b91d2d3ce529633652f88aed84b05209cc95f2d0a6a25267b4a976553"

      def install
        bin.install "frontier"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/raystack/frontier/releases/download/v0.8.27/frontier_Darwin_x86_64.tar.gz"
      sha256 "789303586aa3226e2be3f6b7b7a31b5a9d86def1ce96458d4485f2e29b94791c"

      def install
        bin.install "frontier"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/raystack/frontier/releases/download/v0.8.27/frontier_Linux_x86_64.tar.gz"
      sha256 "b1b5f8e7e76141ce87070cb3ac3d1539b6fa42e0bac760e958271f641441527a"

      def install
        bin.install "frontier"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/raystack/frontier/releases/download/v0.8.27/frontier_Linux_arm64.tar.gz"
      sha256 "f332be1949f585f52e8cb511c583781c1fa87e19b869c752fa209da199aaae87"

      def install
        bin.install "frontier"
      end
    end
  end
end
