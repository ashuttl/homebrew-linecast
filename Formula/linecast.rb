class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/28/d6/6634b8fd6ffbac73ec09ffe10ff74450fe6ba7de03700807d71fa19b7467/linecast-1.13.0.tar.gz"
  sha256 "fecf022749a8cfdebbec5ce5c723ba6c5983ec242266fd36f359be938000ea43"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
