class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.5/trivy_0.0.5_macOS-64bit.tar.gz"
  version "0.0.5"
  sha256 "161455eeed11bc7ff6e0fc5f98bc189942406ef60d3c694e7cb0b5b950f947f2"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
