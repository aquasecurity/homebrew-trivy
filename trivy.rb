class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.11/trivy_0.0.11_macOS-64bit.tar.gz"
  version "0.0.11"
  sha256 "f8bbcd86aa134b7fa080fb72757d9cd0911558e669cffe029ae2b8af82c16743"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
