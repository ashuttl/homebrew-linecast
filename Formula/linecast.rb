class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/a2/9b/2e22a590b91ffbe22f7e0af75b1ac1472c4cd269ca835368285e8c8df30d/linecast-1.8.0.tar.gz"
  sha256 "a963f7cad42eb27c094dfc233ef2b511d93c14c9283ff7e283a34ad1162684e3"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
