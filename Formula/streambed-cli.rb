class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.34.0/streambed-cli-0.34.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.34.0"
  sha256 "bda541e3d825c7d2128391b2c9c036df85f15bcd84d92a020de613c174f73766"

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

