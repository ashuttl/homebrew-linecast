class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Weather, tides, the sun, the moon, and maps, drawn for the terminal"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/29/c7/8bc090e9ce31313df723aaea5fde3fe148b3793854f1ddb3abbcc0244c36/linecast-2.1.0.tar.gz"
  sha256 "4c278f791905ed22ae065ed089ce7f81fcaa412e2abcb740ed190af833e99cca"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/linecast weather --help 2>&1", 0)
  end
end
