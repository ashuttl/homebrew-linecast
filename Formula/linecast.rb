class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/46/70/868f8e0bbd53e9f2874bd7398676d4a68703d31e0e37d369932ee1b14f2e/linecast-1.2.0.tar.gz"
  sha256 "b4e81cb55d1b1e965d6a1ec562cbb6c5d6de3257f3b5dc0029fd36adf79fc5e9"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
