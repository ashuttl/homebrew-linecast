class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/b2/f5/928f99b4ec5fb4075b7781f3142f9d696bcefe051c23edea9cd2e3bf875a/linecast-1.12.0.tar.gz"
  sha256 "07af24de52d1d8b74bceb0c96e3c42006a2d2c2c5b3999bc442da49eb210edf0"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
