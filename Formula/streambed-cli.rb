class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.39.1/streambed-cli-0.39.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.39.1"
  sha256 "07c9d3bde62a9b5747cf3d3e06578c8250c3869f21bb5ece22331a9505c833b8"

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

