class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.4/trivy_0.0.4_macOS-64bit.tar.gz"
  version "0.0.4"
  sha256 "ccd2017f69b3e42439c87ae807550e6d630b47eced1296acf11c90a65d24c91e"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
