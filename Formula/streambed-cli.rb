class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.8.3/streambed-cli-0.8.3-mac-x86_64.tar.gz", :using => :nounzip
  version "0.8.3"
  sha256 "d9891bfb4b207eef34bac0a98a582ee0a791d06b20a4e8d1eb8bcbd893afad49"

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

