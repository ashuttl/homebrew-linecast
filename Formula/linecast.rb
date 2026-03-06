class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/a8/60/7c37680d148b143848da742f27ff70387b09e29c9ca02743c5e1494add45/linecast-1.1.3.tar.gz"
  sha256 "e10518ea0d0ef576ab8b6a6dbbc7b8f55ecdb2725a09d16e2fd2b9c47289e668"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
