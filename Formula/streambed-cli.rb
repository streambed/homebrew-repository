class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.5.4/streambed-cli-0.5.4-mac-x86_64.tar.gz", :using => :nounzip
  version "0.5.4"
  sha256 "57976d5104e53c67b0ca551f093cd93ed4c5470f9a214ec5468223098eb01105"

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

