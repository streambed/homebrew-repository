class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.31.1/streambed-cli-0.31.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.31.1"
  sha256 "1e5b58ff34e4f49f95871024f6496371f94e2219d80ed6f56695b95cc7e85700"

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

