class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.10/trivy_0.0.10_macOS-64bit.tar.gz"
  version "0.0.10"
  sha256 "e63e5b4e4853f1c5ae84448847aff1110341c06081ee1f638f78b6d5da3411da"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
