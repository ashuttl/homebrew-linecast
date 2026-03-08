class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/03/83/6d7d7099bd8c289276b18b3ba71cc29db0ee8bf1f85ce3a236bfa2d9c43a/linecast-1.1.8.tar.gz"
  sha256 "8f226f4840d11581eb86592d701f7be1e031f1b12a2474328335db68cea1f162"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
