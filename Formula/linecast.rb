class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/5c/f5/64c8ad778d148118f6ef23c3555eb13fa3840107c6d34a7347b300a7f700/linecast-1.1.9.tar.gz"
  sha256 "57593ffa9dfeb42af391c6087c9b3c2cdabea79c3849f5bc88fde0e3b51c0a65"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
