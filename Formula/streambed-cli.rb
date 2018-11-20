class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.8.2/streambed-cli-0.8.2-mac-x86_64.tar.gz", :using => :nounzip
  version "0.8.2"
  sha256 "fdc37e911c71900af1813c62cc5d5f60f2f98bb5a92708fca9c57caef6ec9c20"

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

