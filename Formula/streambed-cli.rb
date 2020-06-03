class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.37.1/streambed-cli-0.37.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.37.1"
  sha256 "916e531ac386e93f6e5eae9c8510f730a36cb4057699474e2cec212eb29dbd75"

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

