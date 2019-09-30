class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.30.1/streambed-cli-0.30.1-mac-x86_64.tar.gz", :using => :nounzip
  version "0.30.1"
  sha256 "352264c0336a4921f595e3f74bfda6fa65f8280bf7fbbd785bed2ada60621285"

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

