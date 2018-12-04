class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.10.2/streambed-cli-0.10.2-mac-x86_64.tar.gz", :using => :nounzip
  version "0.10.2"
  sha256 "98af2104844b2a948d83f845ae3b2973752226d8def57b906c934f16fda92344"

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

