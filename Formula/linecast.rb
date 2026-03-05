class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/5f/5c/b8a37fed7e9b2cd6b975f4f90d5752e434d6c0c0d7045c34c3ae404b9b19/linecast-1.0.6.tar.gz"
  sha256 "0e0cb85b135f07f51a5b371b619af814f27fe9772f1031545dba6f9f858f0a3e"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
