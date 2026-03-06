class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/8a/27/d254684bf51c7575db156b27dd8c53f3afb3a79272ba616468f1a5f3e6d8/linecast-1.1.5.tar.gz"
  sha256 "de64ef86e72d443877d95c9a18446feaa984b5821ad3b1cc4c24a6d2f3526d4f"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
