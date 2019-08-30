class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.27.2/streambed-cli-0.27.2-mac-x86_64.tar.gz", :using => :nounzip
  version "0.27.2"
  sha256 "00ded5551efb59ca8304a5183aee99aeefea862d33136a3a89d5432e39d2cce6"

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

