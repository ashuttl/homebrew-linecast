class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/ed/98/393e443b2b9f5fde8eb36f27134c73f7093f8f83a1f60de5585bd90deb3f/linecast-1.9.1.tar.gz"
  sha256 "7106bf180946d11f39c778dd80e2ac45089538c5bced076928dab88edf4efb91"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
