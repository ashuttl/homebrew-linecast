class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/29/3e/00dd1b47858bcb7037588e8eff77773e97e3a07dae859e18972909dec65f/linecast-1.1.4.tar.gz"
  sha256 "524cedaa33c6ff845cf5b1f2975b2d04fddc13f9b104021bd9729ac43d2e6627"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
