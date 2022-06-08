class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.43.1/streambed-cli-0.43.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.43.1"
  sha256 "2df5922053f114a90fb9f6a68edd01819c93a268c06cc478ffde31f7424d4dc8"

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

