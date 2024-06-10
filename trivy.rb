# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Trivy < Formula
  desc "Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues"
  homepage "https://github.com/aquasecurity/trivy"
  version "0.52.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.52.1/trivy_0.52.1_macOS-64bit.tar.gz"
      sha256 "ee6b2624eb2de61932fd89c89ad09cee52b64b84f365ca9da461f53609eaabe6"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.52.1/trivy_0.52.1_macOS-ARM64.tar.gz"
      sha256 "ff528d365f9982452e86bd990d58052d2023398ffcfb1727dbbf042345702110"

      def install
        bin.install "trivy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.52.1/trivy_0.52.1_Linux-ARM64.tar.gz"
      sha256 "abfaa1f498fc22da54bc8f8276f48a318faba32b468e1ee15fbaa8a2a514451f"

      def install
        bin.install "trivy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aquasecurity/trivy/releases/download/v0.52.1/trivy_0.52.1_Linux-64bit.tar.gz"
      sha256 "c1a57e847bbd5fe905bcc50a40dff8ca59c1246983155e65ec083f9d35941bdc"

      def install
        bin.install "trivy"
      end
    end
  end

  test do
    system "#{bin}/trivy", "--version"
  end
end
