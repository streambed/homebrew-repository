class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.35.0/streambed-cli-0.35.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.35.0"
  sha256 "842b2b4643fe2797196543115f71cb8e23acd609f1f6c28dc4948b9735721e39"

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

