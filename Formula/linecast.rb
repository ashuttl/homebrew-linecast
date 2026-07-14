class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/2c/c7/c521223a5586889331742410d2977aaa027ad0641500ceba0ed46ec1a854/linecast-1.3.1.tar.gz"
  sha256 "afb22b1cd3d881877e21055eddca32742e05506a75a7d4c1473da29747dc4699"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
