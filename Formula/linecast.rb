class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/b8/a1/11ba1d3fe44dc0e42e9f824accbb1f47e390a102669f992e52b32bb9a534/linecast-1.9.2.tar.gz"
  sha256 "3e0c12462d5d6386df1055f0c0c0f6d04fc7d276d807f4517e11f8a3f7a2c458"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
