class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.26.0/streambed-cli-0.26.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.26.0"
  sha256 "67da4969a3b879587bc9bba599dfbbd633ff4e3428c8387e408178f85cb8c6af"

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

