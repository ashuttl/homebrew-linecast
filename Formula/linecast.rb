class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/a3/0e/256c3256df56378954b321a3c97067314310e8fbcc1a876547861e0a2635/linecast-1.2.3.tar.gz"
  sha256 "d5a516624dfb5af9ef157fdbbe7d7a42ee5850b873c096c8f0983e690cd94582"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
