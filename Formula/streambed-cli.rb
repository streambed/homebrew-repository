class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.30.4/streambed-cli-0.30.4-mac-x86_64.tar.gz", :using => :nounzip
  version "0.30.4"
  sha256 "43be2a4c1a8f6284cdffff98c730a4d632977e23616eb08b01c4c9b1ff806734"

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

