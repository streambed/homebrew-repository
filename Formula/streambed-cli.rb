class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.8.4/streambed-cli-0.8.4-mac-x86_64.tar.gz", :using => :nounzip
  version "0.8.4"
  sha256 "804f0fad27ee3563b3c5c3ead79478f4e83801136a0f79ed500137cd7c4ce9db"

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

