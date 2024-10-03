# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Frontier < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/raystack/frontier"
  version "0.33.2"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/raystack/frontier/releases/download/v0.33.2/frontier_Darwin_x86_64.tar.gz"
      sha256 "6fc8dcba11ab313b48bfb6d3c0148eba728edfad6a202a1f64fa375bec06423e"

      def install
        bin.install "frontier"
      end
    end
    on_arm do
      url "https://github.com/raystack/frontier/releases/download/v0.33.2/frontier_Darwin_arm64.tar.gz"
      sha256 "a7ca2b774c612294e3e225d181da03a05c6ee385de7f9af30ff2dd19a70dd4ce"

      def install
        bin.install "frontier"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/raystack/frontier/releases/download/v0.33.2/frontier_Linux_x86_64.tar.gz"
        sha256 "5290e84c61179d381c500ebf7ecbf79880507992cc0b0acf714139e51347a205"

        def install
          bin.install "frontier"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/raystack/frontier/releases/download/v0.33.2/frontier_Linux_arm64.tar.gz"
        sha256 "2d64ce89b888a2e04e020688b4325f6fde06918a235983b45b42ded9c1a8fbf4"

        def install
          bin.install "frontier"
        end
      end
    end
  end
end
