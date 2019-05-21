class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.1.1/trivy_0.1.1_macOS-64bit.tar.gz"
  version "0.1.1"
  sha256 "bdb299b3446fb49559056e6c355bd592633cfd2cd4eb51f5e36ff73d4b3fffac"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
