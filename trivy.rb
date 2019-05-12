class Trivy < Formula
  desc ""
  homepage "https://github.com/knqyf263/trivy"
  url "https://github.com/knqyf263/trivy/releases/download/v0.0.9/trivy_0.0.9_macOS-64bit.tar.gz"
  version "0.0.9"
  sha256 "91140a89e88324a8f7635051a2baafc2bd65eb13d5a86d670f568b50f6f8168c"
  
  depends_on "rpm"

  def install
    bin.install "trivy"
  end

  test do
    system "#{bin}/program --version"
  end
end
