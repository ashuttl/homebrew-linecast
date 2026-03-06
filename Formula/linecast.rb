class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/5d/1a/aa4ef60a3724ddea9178dba3070303a3c6bb00b963ab8ea0dcdfe867a01f/linecast-1.1.0.tar.gz"
  sha256 "085652f08907e7a978eace3192d416c418ba65f380a5ea88bc66013a9ba0a53d"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
