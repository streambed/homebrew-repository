class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.30.3/streambed-cli-0.30.3-mac-x86_64.tar.gz", :using => :nounzip
  version "0.30.3"
  sha256 "01de3fc33a74d200eca8858a3249762aadb5de4ea153a8be4f656f50dc19c1dd"

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

