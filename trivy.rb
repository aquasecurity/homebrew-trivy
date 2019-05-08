class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.7/trivy_0.0.7_macOS-64bit.tar.gz"
  version "0.0.7"
  sha256 "ecf1d22b978bebdfeef5fff3bec875e9c55f745a61c5bb1b567a3fadcf53de04"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
