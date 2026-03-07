class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/2d/11/9c47dd3b097b352b731ab84181c1f8299baf3422fd89f1ca6320170f053b/linecast-1.1.7.tar.gz"
  sha256 "d3090dad584d95b3bb6596ec20ca5d4639e42f6f1fce311f151ef4762f9d4f32"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
