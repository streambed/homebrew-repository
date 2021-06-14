class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.40.0/streambed-cli-0.40.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.40.0"
  sha256 "c20c3b63b727902307315062fa1a53a5ff76e9d2560baf30e753c5f301f6652f"

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

