class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.30.0/streambed-cli-0.30.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.30.0"
  sha256 "e3d60896448c62db6c4ed01ff5438698bcfff0242f8a327bbc8932bfaeb832ef"

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

