# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Frontier < Formula
  desc "Identity and authorization system"
  homepage "https://github.com/raystack/frontier"
  version "0.48.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/raystack/frontier/releases/download/v0.48.1/frontier_Darwin_x86_64.tar.gz"
      sha256 "e64a476e198458979e27c25b83964211e97c1cfd369ed2f8f238bf92a4bf832d"

      def install
        bin.install "frontier"
      end
    end
    on_arm do
      url "https://github.com/raystack/frontier/releases/download/v0.48.1/frontier_Darwin_arm64.tar.gz"
      sha256 "0186625e66edc0556b505b2dac4657d8551ee106e54e2e4dab17b014794858f5"

      def install
        bin.install "frontier"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/raystack/frontier/releases/download/v0.48.1/frontier_Linux_x86_64.tar.gz"
        sha256 "d2dac75351ce0c1b784a7e00f4679d07ca7116da938766aa47bb26126bfc90f3"

        def install
          bin.install "frontier"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/raystack/frontier/releases/download/v0.48.1/frontier_Linux_arm64.tar.gz"
        sha256 "864fb10b5e1b7be598496c46292375a7068698842e65cb276238978bc8174ef1"

        def install
          bin.install "frontier"
        end
      end
    end
  end
end
