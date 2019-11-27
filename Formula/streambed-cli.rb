class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.32.0/streambed-cli-0.32.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.32.0"
  sha256 "299b64eee40d7b3e461ae1b392d46c503ca6b2dc3541c3e18b631136816ba843"

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

