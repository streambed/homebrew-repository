class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.9.0/streambed-cli-0.9.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.9.0"
  sha256 "b487eb8362059b7e907f19148a27ee958bb0c9edc7cd31dea54e473dd3c8c1a3"

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

