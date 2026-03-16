class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/f7/7d/ef530c6fc5189463a9f5575bebfbab51c072342781dedb38f8936f2e8630/linecast-1.2.4.tar.gz"
  sha256 "2afecffaccbf232ae36915b5dd7792957f02dec7ca1d8154cf54eb7c236cf78a"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
