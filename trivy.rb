class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.12/trivy_0.0.12_macOS-64bit.tar.gz"
  version "0.0.12"
  sha256 "47756cd3a3c54a256c8259afe383a6931143aabc817d7de3277d407cab9d94b2"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
