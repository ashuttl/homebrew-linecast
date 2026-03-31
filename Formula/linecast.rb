class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/0e/8f/cbd8e5a0c9719b7e9c6bad2bac6a05fb641a2053855242a8eb70b1af9671/linecast-1.2.6.tar.gz"
  sha256 "bf6dde73d4bca1129f779c4b79e1c64c94fa4b855023323bad07c91f9794240e"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
