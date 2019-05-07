class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.2/trivy_0.0.2_macOS-64bit.tar.gz"
  version "0.0.2"
  sha256 "c7057f5f5dd47f67ca31229e816acd1e78463e4f060ac582230ee29204a870c7"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
