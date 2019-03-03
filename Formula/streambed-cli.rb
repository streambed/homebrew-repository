class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.17.0/streambed-cli-0.17.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.17.0"
  sha256 "75fe1cb49f00d0845c0f7152014373bccff82509c8f816013fcf18e255188983"

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

