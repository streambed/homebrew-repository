class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.20.1/streambed-cli-0.20.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.20.1"
  sha256 "beb20d3c1391c62085c0fb98d2854a3b3dbdd70f90ad20d42b9ed9046107769c"

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

