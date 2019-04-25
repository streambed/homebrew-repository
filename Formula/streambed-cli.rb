class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.22.0/streambed-cli-0.22.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.22.0"
  sha256 "831de814823a3e24c21bee8387eadf05abfae8827327f2e6d261f9da0e462ce9"

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

