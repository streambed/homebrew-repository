class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.10.0/streambed-cli-0.10.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.10.0"
  sha256 "38120f9895dfe99f7fde31570aad4d7385162a2a818c75966e8a12a90e948da3"

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

