class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.13/trivy_0.0.13_macOS-64bit.tar.gz"
  version "0.0.13"
  sha256 "5ff4f3b5341e2f4813bcb6aaf904c85323566e489f2fd740d667978f0f55c5ee"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
