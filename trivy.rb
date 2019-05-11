class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.8/trivy_0.0.8_macOS-64bit.tar.gz"
  version "0.0.8"
  sha256 "55694d9071b5c0a4635bcdbd51a52329f80d14fa0061eb7c326d5d0a097c9728"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
