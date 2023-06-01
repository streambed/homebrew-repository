class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.43.3/streambed-cli-0.43.3-mac-x86_64.tar.gz", :using => :nounzip
  version "0.43.3"
  sha256 "029ade21d5cfba7f31b1561832dc5ece35e53d9596eba9ad67ca2ac066050607"

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

