class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.14/trivy_0.0.14_macOS-64bit.tar.gz"
  version "0.0.14"
  sha256 "12a556806186b20415196f8844293aa7087d318f48617fd8876268e7708e66b4"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
