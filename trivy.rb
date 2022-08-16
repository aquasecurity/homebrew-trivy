# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc "Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues"
  homepage "https://github.com/aquasecurity/trivy"
  version "0.31.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.31.1/trivy_0.31.1_macOS-ARM64.tar.gz"
      sha256 "60277a4d9d52bc9ab9a56c0177f8a3730b0619b8d33bdb94cb5df2e3a8f9e106"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.31.1/trivy_0.31.1_macOS-64bit.tar.gz"
      sha256 "fb119e8f6d1e0e2702b6ba26e03712ce2c24abcfa1030453b52cb1538a3bb571"

      def install
        bin.install "trivy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.31.1/trivy_0.31.1_Linux-64bit.tar.gz"
      sha256 "45b8c8f16df425e9e11554d07519e3652f2f188db4772afe5c7489c41a75e908"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.31.1/trivy_0.31.1_Linux-ARM64.tar.gz"
      sha256 "c1af96bffe7f4cfd87fb820bbf9a213839f0c3a6455e21c6e82ca0bc0004cc7d"

      def install
        bin.install "trivy"
      end
    end
  end

  test do
    system "#{bin}/trivy", "--version"
  end
end
