class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/77/dd/68b0ead3328df25bec71c3ffed4bdc5587a4127d3346d99c0eb6090ce581/linecast-1.0.7.tar.gz"
  sha256 "9ad6bddd70ef61442db7d5c084e36db375004b04e932f4a399532deef8c87c3b"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
