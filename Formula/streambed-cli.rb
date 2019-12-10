class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.33.0/streambed-cli-0.33.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.33.0"
  sha256 "2a285dfc37ad458a3bf3c077046cc246cfc0c1be046fc19b17ffe53608c9dd16"

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

