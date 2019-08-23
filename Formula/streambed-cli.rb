class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.27.1/streambed-cli-0.27.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.27.1"
  sha256 "8c63b02f74f80bcec634571ddaa960ada74a239ad8ac326d6d291e17c8f9402b"

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

