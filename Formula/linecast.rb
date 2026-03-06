class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/5c/c3/18abcf8bf52f3b2edb97458e2fec0317c2a5bb4da0acb06ec4d62af27660/linecast-1.1.6.tar.gz"
  sha256 "3f7122cd4b4d7ca4512f082635eb5a6241b6df77e13d1f7b6a0a237c623ec5d3"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
