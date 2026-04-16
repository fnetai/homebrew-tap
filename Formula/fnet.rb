class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.18.0"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.18.0/fnet-templates.tar.gz"
    sha256 "9d24c52f4161c3fdfac8154ac99764e85f9c9a6c587173cfa82f5e00af54e608"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.18.0/frun-darwin-arm64.tar.gz"
      sha256 "04af8bf051dad286663305c6c521231bb087362ea1ec10d10b213f83e331caf3"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fbin-darwin-arm64.tar.gz"
        sha256 "71b17103eb3456ab7f0ca44a8b71cc6ff84cbc3e8865fcf40738d26537f3df0a"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fservice-darwin-arm64.tar.gz"
        sha256 "d3f9504ddd8c5dce24759a6d5edf27d17074ebadb6620d3d9007d520d0f8d64a"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fnode-darwin-arm64.tar.gz"
        sha256 "0436f2c0643ccb7786c3ea1ab2e4bf030e747797015a3f863ddecc928b7c515d"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fnet-darwin-arm64.tar.gz"
        sha256 "56636e2bd68de71d941ed2e347f6c9bad5f09407c14b3cc78b4e8f0f4c7e9701"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.18.0/frun-darwin-x64.tar.gz"
      sha256 "ba9c51007e6cb5658b368a4063e0b82b8c1f1c57739c32daf412de04479d5ffb"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fbin-darwin-x64.tar.gz"
        sha256 "ee942a15e1bbaa67dac278759a5fbc28e229746b2d12ca54d4e59f326b068ede"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fservice-darwin-x64.tar.gz"
        sha256 "0adcdd92831707b86b961f3816545891b48c7a28a81584a64e87dc040d8fff50"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fnode-darwin-x64.tar.gz"
        sha256 "861380a77423dccfc891f0085acf2cdca7f82fa99cf647e8a920d1711d6eabfa"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fnet-darwin-x64.tar.gz"
        sha256 "0990a6b24593506b893cf7249966207f9e1b3eedd1c67130ce6032bdc29a43ab"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.18.0/frun-linux-arm64.tar.gz"
      sha256 "b361e655d4beb52f3b6aad2c1632f930ccb29d8a4125daa0347b726c5fc1e1d8"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fbin-linux-arm64.tar.gz"
        sha256 "753fa1516caa6227b6046dc45fa199c48b51cf4c2fb1a3beb57039afb4ee7ec0"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fservice-linux-arm64.tar.gz"
        sha256 "7cd8aec9caf86d3375ff1c2904823fcc2851654153f359f8308bb527075776e5"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fnode-linux-arm64.tar.gz"
        sha256 "e45f29034b5d751ae5ba08fd36636a48b84d8f7af0ea32c3f857c75da959d89f"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fnet-linux-arm64.tar.gz"
        sha256 "13983bb90030c77b7ff92460bc107ab116087ce0b967cb59d45645356b3c6430"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.18.0/frun-linux-x64.tar.gz"
      sha256 "ca02e6242ec33ca336c873248a976f5bedfa39c0a79324c37213e86763acee32"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fbin-linux-x64.tar.gz"
        sha256 "46e5c9a76b8463d627897cb99331c15e9d980b54c896fbf19f97eb9b478ae174"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fservice-linux-x64.tar.gz"
        sha256 "fc9b38ab8d6b8a92c6a9e4e979ee61c8c3db76147d89c4bb5f79aee17c90b8e8"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fnode-linux-x64.tar.gz"
        sha256 "86b84d37f25756384b1413601da21a358c2531c3236a650a6d8470e1a7458e53"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.0/fnet-linux-x64.tar.gz"
        sha256 "5ae2c48796627a832ae8f87083ffbb8eced313ab33b59629031ec4b85c98d892"
      end
    end
  end

  def install
    bin.install "frun"

    %w[fbin fservice fnode].each do |cli|
      resource(cli).stage { bin.install cli }
    end

    resource("fnet-cli").stage { bin.install "fnet" }

    resource("templates").stage do
      (share/"fnet/template").install Dir["*"]
    end
  end


  test do
    %w[frun fbin fservice fnode fnet].each do |cli|
      assert_match version.to_s, shell_output("#{bin}/#{cli} --version")
    end
  end
end
