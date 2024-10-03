# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc "Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues"
  homepage "https://github.com/aquasecurity/trivy"
  version "0.56.0"

  on_macos do
    on_intel do
      url "https://github.com/aquasecurity/trivy/releases/download/v0.56.0/trivy_0.56.0_macOS-64bit.tar.gz"
      sha256 "cf59012b894d32ccb6696ac4feb1addd9a54f836a95db39831da2780e4fe879f"

      def install
        bin.install "trivy"
      end
    end
    on_arm do
      url "https://github.com/aquasecurity/trivy/releases/download/v0.56.0/trivy_0.56.0_macOS-ARM64.tar.gz"
      sha256 "d6f077f3b89d4d7f355720194c55a86b560ba4c915e4b45f771bb070cc16cc53"

      def install
        bin.install "trivy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquasecurity/trivy/releases/download/v0.56.0/trivy_0.56.0_Linux-64bit.tar.gz"
        sha256 "5fa086c95e3dc8a6664fb27e2f006d5c6e91b9c38fb1756e3e285a319b0aca18"

        def install
          bin.install "trivy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aquasecurity/trivy/releases/download/v0.56.0/trivy_0.56.0_Linux-ARM64.tar.gz"
        sha256 "08f599220a7d2bc0edbbab4722f082f0186e767ea4d137ab4f1c57ea284d2df4"

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
