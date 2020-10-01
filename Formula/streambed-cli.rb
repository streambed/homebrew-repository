class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.38.1/streambed-cli-0.38.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.38.1"
  sha256 "2d96c83ab6110be23b65ca96ac54b12869646ea70d51b0260bbe6ebf2eabe431"

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

