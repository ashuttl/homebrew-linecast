class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/10/43/f5624c148f2b8e9d1dee0511dad5c1adb388619d082a84eb5535147d9ccf/linecast-1.11.0.tar.gz"
  sha256 "76fab5782e06772472e36a35c7e32ac7f7beb9122e4d09d5ce82aa883ddfcd39"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
