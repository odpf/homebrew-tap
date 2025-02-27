# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Frontier < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/raystack/frontier"
  version "0.49.0"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/raystack/frontier/releases/download/v0.49.0/frontier_Darwin_x86_64.tar.gz"
      sha256 "b6d5dcf6835ea768424e662f913e86b2326a628870f312b80cbff06f5bf9bab9"

      def install
        bin.install "frontier"
      end
    end
    on_arm do
      url "https://github.com/raystack/frontier/releases/download/v0.49.0/frontier_Darwin_arm64.tar.gz"
      sha256 "a0b47da8d2492186b0d5911b1d5c0a75bf3987b7bf621601e691f8c7f7c14253"

      def install
        bin.install "frontier"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/raystack/frontier/releases/download/v0.49.0/frontier_Linux_x86_64.tar.gz"
        sha256 "21c2de75ab4c177651dac72ddabadc4eb81058e16a9b7d50c03437f6c7eaf338"

        def install
          bin.install "frontier"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/raystack/frontier/releases/download/v0.49.0/frontier_Linux_arm64.tar.gz"
        sha256 "d9d56905bc30ef5a679c1f9f786976eab89363bdfc041ac4dcb198e561f60352"

        def install
          bin.install "frontier"
        end
      end
    end
  end
end
