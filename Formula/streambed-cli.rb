class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.31.3/streambed-cli-0.31.3-mac-x86_64.tar.gz", :using => :nounzip
  version "0.31.3"
  sha256 "a130de2baf34fd69a9f35dfaeb2b448555ff40a7b71b03666d3c9831c9215160"

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

