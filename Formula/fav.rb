# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fav < Formula
  desc "fav is a project designed to enhance your AWS connection experience. It's not here to replace aws-vault, but to work alongside it, making your connections faster and more efficient"
  homepage "https://canilho.net"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pcanilho/fast-aws-vault/releases/download/1.0.0/fast-aws-vault_1.0.0_darwin_arm64.zip"
      sha256 "19ee5813736fba067fe20e02884fd3d55f719f0be9487c33600d6288133f590a"

      def install
        bin.install "fav"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pcanilho/fast-aws-vault/releases/download/1.0.0/fast-aws-vault_1.0.0_darwin_amd64.zip"
      sha256 "981528c84f09bf2efd45d3e1faf0a627b7ec121b6639474804468dc9226f8688"

      def install
        bin.install "fav"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pcanilho/fast-aws-vault/releases/download/1.0.0/fast-aws-vault_1.0.0_linux_arm.zip"
      sha256 "e91b2ad82ef84447439ea301e6188d8227a23b952d876bc7c3ec6b8dcc13334e"

      def install
        bin.install "fav"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pcanilho/fast-aws-vault/releases/download/1.0.0/fast-aws-vault_1.0.0_linux_amd64.zip"
      sha256 "8cbe74080aacfd731fc8c79d204771dba7a91f3889ce01ce79b99ed3cc0ffbb1"

      def install
        bin.install "fav"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pcanilho/fast-aws-vault/releases/download/1.0.0/fast-aws-vault_1.0.0_linux_arm64.zip"
      sha256 "7f5e49a6b8bfd3dd9982b1710b700e6eaf1f55667214192b66661b591debf90c"

      def install
        bin.install "fav"
      end
    end
  end

  test do
    system "#{bin}/fav --help"
  end
end
