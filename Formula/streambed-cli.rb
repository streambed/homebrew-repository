class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.6.0/streambed-cli-0.6.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.6.0"
  sha256 "c01d1dbc20493eb6f008025100dcbb423567ef74703b8a1346b5b089c92f7327"

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

