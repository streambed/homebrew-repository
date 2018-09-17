class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.5.2/streambed-cli-0.5.2-mac-x86_64.tar.gz", :using => :nounzip
  version "0.5.2"
  sha256 "70d3de2254c415cd5d842bbe8e57bc486618f8365353453414a3720ca2056d34"

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

