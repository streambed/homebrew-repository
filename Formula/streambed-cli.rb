class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.8.1/streambed-cli-0.8.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.8.1"
  sha256 "f0eca44740d7331e465342f847905003fc86308f920f396bd0e4925151b981d6"

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

