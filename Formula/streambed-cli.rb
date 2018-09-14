class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.5.1/streambed-cli-0.5.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.5.1"
  sha256 "b615d52dcb10f888a160385bb9d0b272553707bb83f15091464f53c7197ce6e1"

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

