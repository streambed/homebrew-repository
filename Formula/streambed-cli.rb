class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.18.0/streambed-cli-0.18.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.18.0"
  sha256 "8e13e726376f4cd81fde98cecff49b2e0291a0e0cbdbe6e2857b6c57a1980a2e"

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

