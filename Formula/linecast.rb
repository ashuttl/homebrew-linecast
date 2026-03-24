class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/75/09/9b808e6c34c77d869fc708b6877fd0e195c24039e753f6fa77c5a969218a/linecast-1.2.5.tar.gz"
  sha256 "eea4a609b68bcd7602054222b522a10c8488774d4cf4d2e04ffca3583e5a949f"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
