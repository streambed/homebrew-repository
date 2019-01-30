class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.13.1/streambed-cli-0.13.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.13.1"
  sha256 "eb33a3df87572ef05594c4ca23816ee0a2016a35f95a066feb76e6bc23445cb6"

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

