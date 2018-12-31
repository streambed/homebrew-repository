class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.12.0/streambed-cli-0.12.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.12.0"
  sha256 "0dbaaa2dc771b3e00f1c235e6a1f2d83b6e63927186e9a6c594730beb9d20dee"

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

