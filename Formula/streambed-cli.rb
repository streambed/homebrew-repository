class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.43.2/streambed-cli-0.43.2-mac-x86_64.tar.gz", :using => :nounzip
  version "0.43.2"
  sha256 "10b425e327481c4fe1a063ba6467585a44e8c0c0738583919e9ce5cae95df8ad"

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

