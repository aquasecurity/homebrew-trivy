class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.6/trivy_0.0.6_macOS-64bit.tar.gz"
  version "0.0.6"
  sha256 "370e5ba9be5ad87fdef7728b018170d91ccf146c0709210d656f730c27f0f4c3"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
