class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/99/1e/fb95726da174d6721e10aa8479fc982bb0d88f67731809d6dc8bde2ecc80/linecast-1.2.7.tar.gz"
  sha256 "3a82005d4640b4734185d510265478e1fef138565006d98f4b3d06727a80df90"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
