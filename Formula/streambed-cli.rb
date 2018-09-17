class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.5.3/streambed-cli-0.5.3-mac-x86_64.tar.gz", :using => :nounzip
  version "0.5.3"
  sha256 "9b628bab79352bec5019ca4846a6890ccf28bedbc76b6a930fb56d584ed652d9"

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

