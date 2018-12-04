class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.10.1/streambed-cli-0.10.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.10.1"
  sha256 "86bd95d138b1e03ea090523b3c242afbf8d84d1fb28003726cb9bb574be12a8f"

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

