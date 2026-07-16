class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/71/70/7deff40e778f7fdfffae91165930fb20976cc01d2fa1f5e142ccbbeb75a4/linecast-1.4.0.tar.gz"
  sha256 "b9d8dd8cacbb0de81610586096b491f9754e9796b0e2f1f0e1fa46d8c16067cb"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
