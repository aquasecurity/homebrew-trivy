class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.1.2/trivy_0.1.2_macOS-64bit.tar.gz"
  version "0.1.2"
  sha256 "5ca4f7527caae3dbe92047e826235c718abccdf4273d7028955949aea83a845a"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
