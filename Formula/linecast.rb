class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/53/e0/342f7ce6712888e330b87cc011aa09005512fab9f6e0a072b2756450b32e/linecast-2.0.0.tar.gz"
  sha256 "8774cf26e57da232a567f7bb9464d6f1a53cc9b928fd39e5daa63e70f4667ee2"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
