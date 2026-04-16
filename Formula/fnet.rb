class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.19.0"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.19.0/fnet-templates.tar.gz"
    sha256 "7e715280cab7d7d1fd4fde14af085ac1d3959bf5de351dfefcba26058e2fae3b"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.19.0/frun-darwin-arm64.tar.gz"
      sha256 "8545742900ab6661290cd36873031f805568a893db286836b318bb9d2e095ee4"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fbin-darwin-arm64.tar.gz"
        sha256 "5d8dca9edf10faa1c0e05ef51fe8985fe42e93bcf7a715a57e1081725749c6e1"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fservice-darwin-arm64.tar.gz"
        sha256 "730c04f28aa732d13c29be2fe1aeab5a049ce487bc73cfac8802fd7c48fa4cb4"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fnode-darwin-arm64.tar.gz"
        sha256 "b1ed1e583482f55293600f1fa9c8e31deba3ab2b48eef9cd20bd898b9c1a6421"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fnet-darwin-arm64.tar.gz"
        sha256 "a092d816271562fb7a6a160cd3dfcaff1861ed5b3da19e105f459212496a6672"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.19.0/frun-darwin-x64.tar.gz"
      sha256 "2a3f3c50c5e4579c95becc0d03ba5455a01f7135ed730db3c701e972bf7577ee"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fbin-darwin-x64.tar.gz"
        sha256 "e4a76ef58b1410bb28c74f446c66f84145a13d8c8820c677082ff1122a3ba18d"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fservice-darwin-x64.tar.gz"
        sha256 "11b69f7349a69ae048e4729ab076024d5c1222f6c018dfeb8e94b53808971754"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fnode-darwin-x64.tar.gz"
        sha256 "13e691a038c399d28c0eea50c4688cd8c026697e5fffdd13f25acf22977bd3e0"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fnet-darwin-x64.tar.gz"
        sha256 "8729f33053ab15167398756fb1c9a0a4a0ecab8fc4417ed415a824351c895ab0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.19.0/frun-linux-arm64.tar.gz"
      sha256 "661fa40964e8388fefe72a3123a464a2e0d83a4f19f0fd15a69e040f0975aad0"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fbin-linux-arm64.tar.gz"
        sha256 "e97e3a91408a968b6ed2e18833f1a3105f35fab4601f18caecde46b65aeb5a7a"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fservice-linux-arm64.tar.gz"
        sha256 "f847abb3d83a92d22a7c8b79277b12469fa893b5a37e50ac7fc6a5ec2ea04876"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fnode-linux-arm64.tar.gz"
        sha256 "ae45315427a208ad5e6a70cba85d2361c261ceb04d088780d76a12ecb4108e09"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fnet-linux-arm64.tar.gz"
        sha256 "8c3ebf2b38751f4caf7a515b19d5811f88b1d3cdc366ab0c5dd418899019826b"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.19.0/frun-linux-x64.tar.gz"
      sha256 "4238db76201a5db2004dffcd31c0a8bd24ada5460c890c24fea56cfa982cfa56"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fbin-linux-x64.tar.gz"
        sha256 "d51d3c4a44d2081076784eae42d2bc129fea7c6c6d6a7fa8158f916344d4f8c3"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fservice-linux-x64.tar.gz"
        sha256 "009c4cb8f7868874d9c088422f8ca0537e8db69ef4682295e007f2aefae2a0e7"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fnode-linux-x64.tar.gz"
        sha256 "bbf25512c02b8c93b4892647a43f2c51658434b27bc1f244e9083e26f88121e9"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.19.0/fnet-linux-x64.tar.gz"
        sha256 "4dea4bc334b7e7c41e46cbc04cc49e38eeab2dd529a708b03c32f9161fd052a6"
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
