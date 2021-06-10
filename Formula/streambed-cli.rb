class StreambedCli < Formula
  url "https://repositories.streambed.io/packages/streambed-cli/0.39.2/streambed-cli-0.39.2-mac-x86_64.tar.gz", :using => :nounzip
  version "0.39.2"
  sha256 "2b0f301cbab551d5e35083e8190bb65f66fa2347affc621c7e3192d0a6d357cc"

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

