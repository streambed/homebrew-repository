class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.28.1/streambed-cli-0.28.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.28.1"
  sha256 "63c10f10add47d4f1312c8a9ec6d59b5ed90d1349c19b9f08029a9be44a4ff59"

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

