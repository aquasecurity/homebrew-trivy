# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc "Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues"
  homepage "https://github.com/aquasecurity/trivy"
  version "0.58.0"

  on_macos do
    on_intel do
      url "https://github.com/aquasecurity/trivy/releases/download/v0.58.0/trivy_0.58.0_macOS-64bit.tar.gz"
      sha256 "164abcfbc24a7baf862dd57344818635a4a9581c855530e05b5455fa26d833dd"

      def install
        bin.install "trivy"
      end
    end
    on_arm do
      url "https://github.com/aquasecurity/trivy/releases/download/v0.58.0/trivy_0.58.0_macOS-ARM64.tar.gz"
      sha256 "5569a12bf3ceb9e73548fae237bc53239d3fb2e6fe08d7334220cec831e464bc"

      def install
        bin.install "trivy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquasecurity/trivy/releases/download/v0.58.0/trivy_0.58.0_Linux-64bit.tar.gz"
        sha256 "eb79a4da633be9c22ce8e9c73a78c0f57ffb077fb92cb1968aaf9c686a20c549"

        def install
          bin.install "trivy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquasecurity/trivy/releases/download/v0.58.0/trivy_0.58.0_Linux-ARM64.tar.gz"
        sha256 "647257a12a5b6ddb8f78851db40a97799d31cd1f8000b545dc9d028d6930e1fa"

        def install
          bin.install "trivy"
        end
      end
    end
  end

  test do
    system "#{bin}/trivy", "--version"
  end
end
