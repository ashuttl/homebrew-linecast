class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/4c/81/420c57131b4e8885fb062bbff9974f411b6862772c244f27fd8fe65736e3/linecast-1.3.0.tar.gz"
  sha256 "8545f6e08dfba8656c930deb49e1c5775f45fccd4306ca4e6c192b5aa7945d69"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
