class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.25.0/streambed-cli-0.25.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.25.0"
  sha256 "2391963cbb131ffa4545999e4adfbc850fcff9d35fdfd9a10324ce649b065a5b"

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

