class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.28.0/streambed-cli-0.28.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.28.0"
  sha256 "6b190aa5c62651f488c7e9a3cbf750591f8786fd560f50abcd1ae568049348bd"

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

