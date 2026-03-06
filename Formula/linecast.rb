class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/91/fa/29b21fc67b4a383b327110d46e67c1529d562eef44a618e9dd5cf996c8f6/linecast-1.1.1.tar.gz"
  sha256 "cd14d60f8cf46a457be4f5c1891e4575a99fe39f52f74f6fc440d9397f54f08b"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
