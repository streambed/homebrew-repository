class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.38.0/streambed-cli-0.38.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.38.0"
  sha256 "a5b4fecbdf04178e51f47ef6ef6fc113b613c3aea9fe34e008ce639ddaa780ed"

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

