class Linecast < Formula
  include Language::Python::Virtualenv

  desc "Terminal weather, radar, solar arc, and tide visualizations"
  homepage "https://github.com/ashuttl/linecast"
  url "https://files.pythonhosted.org/packages/fd/4c/4abaeadbbde78fd74ca37d52cf6b54c21588725e227de7b2065996750448/linecast-1.7.0.tar.gz"
  sha256 "1646d596be2b23ce54841fe9c8c8c776cfcdfd15edf652b65f98eaecc8c3ca78"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/weather --help 2>&1", 0)
  end
end
