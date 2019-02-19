class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.15.0/streambed-cli-0.15.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.15.0"
  sha256 "fe3e15cd38b6d10d08097ee98ad50727517c12723429f3f30fe1fce8f687edd3"

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

