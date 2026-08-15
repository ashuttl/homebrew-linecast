class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/75/f3/393f9520901e52d1e14a1a6dc0bd967f98de320586a5768c5c19f306f0bd/linecast-1.9.0.tar.gz"
  sha256 "be6943de48460576e2cd39229c29b26108ec01a64464065c1b417e7832dc5df7"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
