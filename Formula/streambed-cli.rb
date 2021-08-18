class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.42.0/streambed-cli-0.42.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.42.0"
  sha256 "64771572f65c62d243480245ebdb05d1026977e9ac1068584bf0074731793712"

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

