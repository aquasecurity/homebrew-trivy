class Trivy < Formula
  desc ""
  homepage "https://github.com/aquasecurity/trivy"
  url "https://github.com/aquasecurity/trivy/releases/download/v0.1.5/trivy_0.1.5_macOS-64bit.tar.gz"
  version "0.1.5"
  sha256 "e6b776ffdd951e271b0c29a0070870e414ea8c277311efccb185e00863226877"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
