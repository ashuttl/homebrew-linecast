class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/d6/7a/e863adf6991ee7870a77463da407ee2c47d646bece88e6a1bcd7ac1c65ba/linecast-1.10.0.tar.gz"
  sha256 "f5c411bbe5a9d2604fd34ae91ddb2c2de14077295f45be59c4db4ddca20ca3a2"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
