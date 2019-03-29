class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.21.0/streambed-cli-0.21.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.21.0"
  sha256 "7fd901d09fffdfd3a6e3a3f22c9135f6a59b9e1eb54eb3cb0e363c087bd2f1d4"

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

