class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.41.0/streambed-cli-0.41.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.41.0"
  sha256 "33ba24e9a842563f27908d89a25f3c8bab57aefb11d94bab57a1c50145ffee4a"

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

