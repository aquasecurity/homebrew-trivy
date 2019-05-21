class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.1.0/trivy_0.1.0_macOS-64bit.tar.gz"
  version "0.1.0"
  sha256 "8857efee64deddf581602c89d943b274422dde7a003b2300690ae4c6031e0723"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
