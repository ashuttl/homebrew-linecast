class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/78/2c/37bca2a09033deb6d37144375f5700e43879cb5adb4928edc8eecac92ad7/linecast-1.2.1.tar.gz"
  sha256 "4c7c5b3b11b47fad1758990e8309b67e9a6a68382446f8e18bd6583ebfbe55a0"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
