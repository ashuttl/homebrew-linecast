class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/e2/a9/57d434c6511d8bb56fb245b537ae174916db282386b9a1f1c1bc8a69e453/linecast-1.5.0.tar.gz"
  sha256 "5535e928932125d86c200a1bdfa54bcabb1e7abebe2d522d9267adbb121bab85"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
