class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.21.1/streambed-cli-0.21.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.21.1"
  sha256 "41619e514caaf387a9eacfefbd360cb3299b668ef328f511ea60609d7652ecaa"

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

