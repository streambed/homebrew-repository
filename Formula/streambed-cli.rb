class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.13.0/streambed-cli-0.13.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.13.0"
  sha256 "eba813599cb8223c42dd04585372d18220e5706104995bedbcc19a9eddcdcd65"

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

