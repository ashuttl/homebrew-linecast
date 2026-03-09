class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/54/c8/f44cd40b96519033d23515c471d5f41f85880c41419b844ce1c9eb9a11d0/linecast-1.1.10.tar.gz"
  sha256 "ba692740bd9c9db95cbe22e2142bc5c74546855f5f92832ffdc48f480cb4f41a"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
