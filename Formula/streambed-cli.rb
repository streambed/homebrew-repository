class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.43.0/streambed-cli-0.43.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.43.0"
  sha256 "1c40778f059db96cc3c2613be2050629de9839c4d1bd22c8dc75affdd629fdca"

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

