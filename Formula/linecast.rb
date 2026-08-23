class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/e2/31/7ad8f0b0b12aa2d81c932cdb24351c2ddb46cdf34e5bbcc7b75227c94bcc/linecast-1.14.0.tar.gz"
  sha256 "b48caf027f874ce95bab7b4afb3a6e347add56eebf42eb4ea6de1261c5885840"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
