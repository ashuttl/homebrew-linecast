class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/84/e1/c9d03ce438a8edddd4e7feaf1487527b9376b4e83409d60301e05199c729/linecast-1.16.1.tar.gz"
  sha256 "9be621517673919e2619f0b1cedcff8604fa7612971214d84abcbf817723c1e7"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
