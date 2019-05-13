class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.11/trivy_0.0.11_macOS-64bit.tar.gz"
  version "0.0.11"
  sha256 "be91c070589d565183e37043572001797afb3438d5e7c177f9d9877ad3bc09c9"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
