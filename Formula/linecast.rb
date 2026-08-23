class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/33/1e/7896f77e0539467024a22a428023a5acf60a75f250fb1a11c5a77f97e32b/linecast-1.15.0.tar.gz"
  sha256 "9a59c3f324c91c3fc86e1a683c874880c74929edcf7357e26a1072d4f71bcdef"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
