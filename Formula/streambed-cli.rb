class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.24.0/streambed-cli-0.24.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.24.0"
  sha256 "298d9774bd455bc7d5ba4d4db3f0241e5a10b560bcf1b936c934e22556c9edc7"

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

