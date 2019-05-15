class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.12/trivy_0.0.12_macOS-64bit.tar.gz"
  version "0.0.12"
  sha256 "e0e63c25f8101f8a2f9b30948037c3f9fda2193bc728c4921ded957feebd551c"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
