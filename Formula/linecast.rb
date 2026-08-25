class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/fd/4d/735c78d2aa99fad1c9587264c5ca043cd9b08c56011eb0e3115cae173d44/linecast-1.17.0.tar.gz"
  sha256 "a79dd92da0a5ea449042e6d00cd40b514536407f3c23d830e7310178204b9785"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
