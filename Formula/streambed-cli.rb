class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.31.2/streambed-cli-0.31.2-mac-x86_64.tar.gz", :using => :nounzip
  version "0.31.2"
  sha256 "4baba83a76818abd28cd1463a40a31e4a13743b528e217a1335d34945ce657e4"

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

