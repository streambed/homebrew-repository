class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.19.1/streambed-cli-0.19.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.19.1"
  sha256 "fd121b0a9093e8a3f1e180a476ed3f9ac78cc283cf86a029a169bc00f1ef5e77"

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

