class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/72/39/8cc9785bc34c6533eec73f7fb8e73f51802f46b3ac7362ed07317ccfee4c/linecast-1.4.2.tar.gz"
  sha256 "4ff23c9c62ce09d12afc78a518d0f5e98bcddc4316005a4c7839d7c62f3dd2a6"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
