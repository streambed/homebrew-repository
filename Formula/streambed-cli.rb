class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.11.0/streambed-cli-0.11.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.11.0"
  sha256 "21596e4ae460a00215db373b680865684b64115bfe8d8526ac34d5b518d1c989"

  desc "CLI tools to install and manage Streambed applications"
  homepage "https://www.streambed.io/"

  depends_on "openssl"

  def install
    system "bash -c 'tar --strip-components 3 -xf ./streambed-cli-*.tar.gz'"
    bin.install Dir["bin/*"]
  end

  test do
    system bin/"streambed", "-h"
  end
end

