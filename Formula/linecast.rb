class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/c2/9c/0ca3ba84f2b62d3ee3a352d4ca3ca0cc8c3b70dcfce68ad52cc10effb6c3/linecast-1.1.2.tar.gz"
  sha256 "de5f2c186580a739e3999c140487885a5959cb2acb8cc620a6616451c5d2aa81"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
