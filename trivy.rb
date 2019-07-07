class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.1.4/trivy_0.1.4_macOS-64bit.tar.gz"
  version "0.1.4"
  sha256 "0280b1b9ccfb55afd0066c7af96f63d793a57ee5579d8300d5b951fc58d37b63"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
