class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/4d/b4/1b035436459208fc0a551c791e29ff1a05561169bcf3f98b4fee68a942d2/linecast-1.6.0.tar.gz"
  sha256 "c844a97a4ee8879e3ca0480fdca802bee38b7479bffcc5c11da35a135e20f6e7"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
