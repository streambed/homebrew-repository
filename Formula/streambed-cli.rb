class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.20.2/streambed-cli-0.20.2-mac-x86_64.tar.gz", :using => :nounzip
  version "0.20.2"
  sha256 "20f4cf04e38f766f175790e6c29682fd43308b0b2db97d0f4c73a6b4cc46e121"

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

