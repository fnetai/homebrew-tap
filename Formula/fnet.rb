class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.20.0"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.20.0/fnet-templates.tar.gz"
    sha256 "7fd75ee1dcc32e8d24bba80b1a8c17bfa82c0455bc644df0cc43b30b4dddae34"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.20.0/frun-darwin-arm64.tar.gz"
      sha256 "4603bf634f18a574a570df12815ea1636249371becf590348e4fe789691e50b0"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fbin-darwin-arm64.tar.gz"
        sha256 "d7cadbe5c823a56dcb0eeb1a30170f53322c5eee817e8a23351dc15c0bd254d3"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fservice-darwin-arm64.tar.gz"
        sha256 "1320a918398fde4a26d008bfbdcbcda994561afda579db4854fcd0e1a3982276"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fnode-darwin-arm64.tar.gz"
        sha256 "382f2d985ecef5c9bef2785f47dab3d5eb44d783a86efa76e24a64d142241669"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fnet-darwin-arm64.tar.gz"
        sha256 "c72424d3d95c5f9e2dd193a9ba2e141e07b020d4d83e993fd0c880c0466378a2"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.20.0/frun-darwin-x64.tar.gz"
      sha256 "9d65fdabbebc02e3885ef853ec264d6fbcea3da6e43b6e957712f196720f4cf4"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fbin-darwin-x64.tar.gz"
        sha256 "240679025f01b8c56368103e59b3f118d0b5f6cefb5400a28032a5f6b48d832e"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fservice-darwin-x64.tar.gz"
        sha256 "34597ca378d9a12b423c228e7be22a045aff2c8f27b398433f3a09d29b28cc9a"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fnode-darwin-x64.tar.gz"
        sha256 "7a89a2f4e5458f6a85bc18387b5449aa833091ff0d3caba64de5d24f69b2a00c"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fnet-darwin-x64.tar.gz"
        sha256 "ea4fcdb2dccad710e3333cc33bb1aca8b90a0bd1ad040eb4a18ab4a06d903a1b"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.20.0/frun-linux-arm64.tar.gz"
      sha256 "295b1b85af6204fb849f5ad28eb456599aa8268324453edd496dc0ef3ab0b085"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fbin-linux-arm64.tar.gz"
        sha256 "384e2e1dff401ff1024dbdef1a6464dbba6fb7a81b7f5974126fad6bb3e310a7"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fservice-linux-arm64.tar.gz"
        sha256 "0422536c9fb29bd1023c856f30f296e1d25e695928f5e2ea0b86189e8cb69cad"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fnode-linux-arm64.tar.gz"
        sha256 "a28b28fdc93f0fde0389b652dffacc50f03c9f47bd83dea1487f05a28b21e62b"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fnet-linux-arm64.tar.gz"
        sha256 "a40e272012d95cad6c995fffda960d121f4e4c3d892636c8706ded7278a17560"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.20.0/frun-linux-x64.tar.gz"
      sha256 "e9304c3702345dddf2ef2aad3625a50bfbe8e6ad3717297165ce02423ad90454"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fbin-linux-x64.tar.gz"
        sha256 "611f50d93f0c1c32b4c170d1efb268ac68987b5ee7378d8080c04852dfb3b113"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fservice-linux-x64.tar.gz"
        sha256 "2c0559e778330aa05ff432c5780ea9c4d47e738c22a85f934ac3e6c6737b2bc3"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fnode-linux-x64.tar.gz"
        sha256 "682f65c23144132a77e9e36333606e4bfaf76b84d02edf1c818979501ee421c1"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.20.0/fnet-linux-x64.tar.gz"
        sha256 "154100b9be4668163e7aeae3eb400dde489adc802fe2a33abb13d6f3775f3714"
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
