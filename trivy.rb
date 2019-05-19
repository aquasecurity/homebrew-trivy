class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.16/trivy_0.0.16_macOS-64bit.tar.gz"
  version "0.0.16"
  sha256 "f108ba214692c98bc9e5ac91b1dffbb9e237f8bdd9724495792dc43655cc3d09"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
