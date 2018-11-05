class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.8.0/streambed-cli-0.8.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.8.0"
  sha256 "6453602aa4a0624695437660e78ebe369c91bec7d7cc40df9f2eeaa06d82336f"

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

