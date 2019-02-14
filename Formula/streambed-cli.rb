class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.14.0/streambed-cli-0.14.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.14.0"
  sha256 "e65f41c29dd59dfe19a1b09ac8d3a69fca5f3368eeeac4d088cfd35f6b704359"

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

