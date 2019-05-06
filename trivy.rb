class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.1/trivy_0.0.1_macOS-64bit.tar.gz"
  version "0.0.1"
  sha256 "034ce00ab4ef5cdff9c227e921c64cbf373a099273b63eab18fb891b3fa119d8"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
