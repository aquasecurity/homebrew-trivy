class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.15/trivy_0.0.15_macOS-64bit.tar.gz"
  version "0.0.15"
  sha256 "0836d1658eea4e1a1acda3cc675c2559d742e6bf501d9f92dceb6ad5340e08a0"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
