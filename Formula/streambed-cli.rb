class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.27.0/streambed-cli-0.27.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.27.0"
  sha256 "4c451b289b2ece73c877b76cb1c189430b3248e8fa40b9a8fb222fd00c3c2f18"

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

