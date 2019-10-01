class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.30.2/streambed-cli-0.30.2-mac-x86_64.tar.gz", :using => :nounzip
  version "0.30.2"
  sha256 "97bcf9e18232da26626145f3ff4ea0707991a6cd35ded9dc7066c105d1c896b6"

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

