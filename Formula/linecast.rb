class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/35/48/988c21346703b19024787b0c09d1024c68e99d05857660cf249e06a470bd/linecast-1.10.1.tar.gz"
  sha256 "9d6795be89c879014e89059fab95ec709c8d4206a44128e0d5f6f1873326799b"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
