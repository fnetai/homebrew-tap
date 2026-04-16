class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.17.2"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.17.2/fnet-templates.tar.gz"
    sha256 "fe888cf97189a0f0c9110b7c71851af4bac781e8fc6c695db4c08cba8c38738a"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.17.2/frun-darwin-arm64.tar.gz"
      sha256 "d092f765d0410d461275397b1114866f660687719b9cc10ff9bbf42c1b966e52"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fbin-darwin-arm64.tar.gz"
        sha256 "7bc15217b605af993e169f9410f0b7b5ffef684aaf14a9b2f999c8e6fe270075"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fservice-darwin-arm64.tar.gz"
        sha256 "2e002838843cf69596a74e088e75813fbfc01760eb8ad1fbca9ed33dbc01bad8"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fnode-darwin-arm64.tar.gz"
        sha256 "77933454024467f37b6db979cc77dd0beb015435fd9f0c4727c88a5b6822454f"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fnet-darwin-arm64.tar.gz"
        sha256 "f6e2960ad5f243fbd22eb38388f0e3e446fb3b4c6e1f44ea70705106b8c48fec"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.17.2/frun-darwin-x64.tar.gz"
      sha256 "9e14b740bec67ff8d8de2deec1734e5ef9dd5924379111076eb3b1967976add0"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fbin-darwin-x64.tar.gz"
        sha256 "e2a5c9bd727f3bcfed41e81386ae381b6286b4c5ebfe745350cb5bfb928f180e"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fservice-darwin-x64.tar.gz"
        sha256 "0938b6ef97032b3f6c3f7bc35b66d4b1444f7159baac71ca3b846fa50274615b"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fnode-darwin-x64.tar.gz"
        sha256 "37b6ab41c0e61ed6f217fc226b9734c1833fadc0e05cc620653371710a8c8214"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fnet-darwin-x64.tar.gz"
        sha256 "7d67c6edd4838fefb7cf5382ddfb68ace0ed7f0942667b2a57b67fcd8f802ddb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.17.2/frun-linux-arm64.tar.gz"
      sha256 "eb5a6997105d2f453c646268059f74a1f58c0c5f0723fefdc5bbd1b47d5d287d"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fbin-linux-arm64.tar.gz"
        sha256 "ade716c556e583fd341c9381158a248840c83de6b959a804e2fc82b52c684ccc"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fservice-linux-arm64.tar.gz"
        sha256 "edf554e8d5a6cd90b4412bca20864c8374da7e33d2f9247b13f3b61e00c10fde"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fnode-linux-arm64.tar.gz"
        sha256 "64a0978041350c9f870692dde55a4ba47c239a196acf495da333c96d29271b34"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fnet-linux-arm64.tar.gz"
        sha256 "8c3b11468fac74b682a33d302a42ae3ceeba3d400d31f812879a38f091566e66"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.17.2/frun-linux-x64.tar.gz"
      sha256 "6a4fb730bfd97b13d5801497575d111454000b2221e3986b1acada9f23b96b0e"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fbin-linux-x64.tar.gz"
        sha256 "796ab9052e4322cba346813738e6c6073558a85993c0e381ae596ae26dd3614c"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fservice-linux-x64.tar.gz"
        sha256 "26a74a45dd1ed472ff3e2972b2012311ecc502ea06e713501a91bb0f3848b4e1"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fnode-linux-x64.tar.gz"
        sha256 "837f21111e215e09ce9d3eba5efade77bd6f06bd47a6c1e42f6f6156b1aa82d7"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.2/fnet-linux-x64.tar.gz"
        sha256 "fdff3cb66eed656e264b8caad75fb83673daa802729bf20cde695fb7bc5d9942"
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
