class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.21.2/streambed-cli-0.21.2-mac-x86_64.tar.gz", :using => :nounzip
  version "0.21.2"
  sha256 "c3225aa8dead1248ccbae5f677b93209384fd80ff0599a8c228ad317b7b42dd5"

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

