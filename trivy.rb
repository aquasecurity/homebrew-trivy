class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.1.3/trivy_0.1.3_macOS-64bit.tar.gz"
  version "0.1.3"
  sha256 "683f2ef80a56a48761a792d99637aaea9941a5288f86b02afb000b7afa87f932"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
