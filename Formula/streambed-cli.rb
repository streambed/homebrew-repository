class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.29.0/streambed-cli-0.29.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.29.0"
  sha256 "dddea5f95bf1d3b44c8ddc2c0f6260f2941f69ff13dc4e95dcd89abf3111fddb"

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

