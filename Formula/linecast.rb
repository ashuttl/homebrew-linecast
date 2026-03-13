class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/36/1e/e4052150d0cf7d447e3c52d56328aa3f48a2396cff3a4e6af81778783b1d/linecast-1.2.2.tar.gz"
  sha256 "b771630fa179d9b93dc590b40ef32eb9b3741dc2e4aa1f953bd6e5cbb73ff7b3"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
