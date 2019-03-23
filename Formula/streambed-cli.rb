class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.20.3/streambed-cli-0.20.3-mac-x86_64.tar.gz", :using => :nounzip
  version "0.20.3"
  sha256 "eba807842e373b4fd0ce01c588c66507c5f5aa289d28714f574f17df107c906f"

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

