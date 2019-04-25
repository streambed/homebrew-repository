class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.22.1/streambed-cli-0.22.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.22.1"
  sha256 "b76be01dce8abc4d08f60ee329e833d786cb0f3aa76dbf5c9feebe15592efc64"

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

