class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/d2/da/ee95c692ac5f753b82235079d4a81d11057526c663b28fa4875c078ac462/linecast-1.4.1.tar.gz"
  sha256 "1311d778fb069b72ec12427a8eec3b3834fa1f44e419d9445e3e1e7c3445ff88"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
