class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.23.0/streambed-cli-0.23.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.23.0"
  sha256 "7426e57b09206dcb79c39b54c41565b2cf3117b33c00a067c900cc64a7f74a1e"

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

