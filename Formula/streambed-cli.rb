class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.19.0/streambed-cli-0.19.0-mac-x86_64.tar.gz", :using => :nounzip
  version "0.19.0"
  sha256 "fb181d6e54fcb9fa8660b1de94020c039a52ec8fc6a705c4be428c1488b962cf"

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

