class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.17.1/streambed-cli-0.17.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.17.1"
  sha256 "252200c566a7b4b8c92cb4068d4e37f5d8a8bfa55f74946a3a4f02df2d58c6fa"

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

