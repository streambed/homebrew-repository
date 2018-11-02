class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.7.0/streambed-cli-0.7.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.7.0"
  sha256 "3c53f2c07a5ffb81f50f89cbcf3e84ecf5a293584fb7a3ed4abdc4e643ee0cd3"

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

