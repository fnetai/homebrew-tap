class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.10.0/frun-darwin-arm64.tar.gz"
      sha256 "bbcce1bd5a31c7f915ea473c1109c9b88888c20c48baac97a9338f85783483c0"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.10.0/fbin-darwin-arm64.tar.gz"
        sha256 "d9cf2aa40ab4474b9395a362f083995e4f4ab1dcd2b4a413beb44dd014124124"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.10.0/fservice-darwin-arm64.tar.gz"
        sha256 "f4c4f0a49806779b21c6db45aab11e27ef6db88c795d4ba317a3fb4329eac5e0"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.10.0/frun-darwin-x64.tar.gz"
      sha256 "2fd3331b899d1e4ae9db8df5cc38525f85e2b96c0195e14b8c8d17f8824089d9"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.10.0/fbin-darwin-x64.tar.gz"
        sha256 "27be3a9dd700df8b6110263321efb77709b291179f27562fb83e34402e8a8877"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.10.0/fservice-darwin-x64.tar.gz"
        sha256 "0fa8b1e4a7db667dc4cb6742ab315a129b5b3ee1d7a0727c6b98c702628aaf1a"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.10.0/frun-linux-arm64.tar.gz"
      sha256 "007f2c484054367c4c37b89ff1af9466e7193f84aac64ca84b3602cad9a329ae"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.10.0/fbin-linux-arm64.tar.gz"
        sha256 "b841b3f78785da51a7a80aa2ca36963cf322d39240812686ceb549290a9daef4"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.10.0/fservice-linux-arm64.tar.gz"
        sha256 "fdcc8d955e81512788c1e523df749060366b28835d8bc36dd25d998e8d7ae01d"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.10.0/frun-linux-x64.tar.gz"
      sha256 "cf6ab2f554b9d11d12428bd46d258431e5b7f2d7a205fb5969eb5cecdc684c20"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.10.0/fbin-linux-x64.tar.gz"
        sha256 "fcf67a808b7569144f55a2b54cff66d9b08c2ccdc6d2904b7e28a6d640c408f1"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.10.0/fservice-linux-x64.tar.gz"
        sha256 "de310d737fd43ebb0df57be88ececffafdb79d5df908282cec776116dc6b0b35"
      end
    end
  end

  def install
    bin.install "frun"

    resource("fbin").stage do
      bin.install "fbin"
    end

    resource("fservice").stage do
      bin.install "fservice"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/frun --version")
    assert_match version.to_s, shell_output("#{bin}/fbin --version")
    assert_match version.to_s, shell_output("#{bin}/fservice --version")
  end
end
