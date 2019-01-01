class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.12.1/streambed-cli-0.12.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.12.1"
  sha256 "b12b53a1569fde6907b79233e2a089fbda4654a943c1c31bec346bdff44bec44"

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

