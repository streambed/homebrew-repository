class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.16.0/streambed-cli-0.16.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.16.0"
  sha256 "478ef67b53719a6ef2765b71b6146586b115296ab7fe02a5d74476ba30f155b5"

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

