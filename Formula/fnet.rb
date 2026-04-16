class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.18.1"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.18.1/fnet-templates.tar.gz"
    sha256 "2a26f43358b8c0e1e62c77b5294eefc1ae4f94e98eeb1b71e84585d45898bc7b"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.18.1/frun-darwin-arm64.tar.gz"
      sha256 "7a97eb3819f0ef5c6d66d2aed8ee8eea08dccb57d3ff02326f6194f528154bd3"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fbin-darwin-arm64.tar.gz"
        sha256 "13eb5f843b69fc6eb94dcfd2c7daad829c4e40dc58fb7e025bc5132e59cd2d54"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fservice-darwin-arm64.tar.gz"
        sha256 "7f0dab683d8ad4168aa33e3e2b0c85164532effa8a641b7f94973dc293af9ecc"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fnode-darwin-arm64.tar.gz"
        sha256 "e92dcc0e5a4f6b491e50ca4dcc005e8de64d24445ffe7e27318048881f486dd3"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fnet-darwin-arm64.tar.gz"
        sha256 "110cb400a8cd43cf097f78a848493faf5681b13d4c2e0b8279d973e403eee25c"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.18.1/frun-darwin-x64.tar.gz"
      sha256 "c8326e02ac874af441d0b51525b61b217cb489c11423e19d865003b98b7024aa"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fbin-darwin-x64.tar.gz"
        sha256 "024d929e8515ff5c438ef5a603bd2b77540c651165f8b9ce8a864703a5db98a4"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fservice-darwin-x64.tar.gz"
        sha256 "c6d70e60c7b26f8c7a37f86c219a7b340df946209ebf01cee6ea8a52415ad255"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fnode-darwin-x64.tar.gz"
        sha256 "51d47ac171013fb403c651183dd7ff3b7ba393e96716c73e2145c39edc7f1931"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fnet-darwin-x64.tar.gz"
        sha256 "afb62ebc6b7c5095096ebfb9d5fda0469b3af98bd7106d9c371976a5df3e1250"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.18.1/frun-linux-arm64.tar.gz"
      sha256 "dedef595940f47def482aebc947e1f71be6d05cec6241fc2e992b999b5eb846a"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fbin-linux-arm64.tar.gz"
        sha256 "341b490d52bbcb2e737cda340280ddefb15e00aab95ce4ef12eab68d14f3fe63"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fservice-linux-arm64.tar.gz"
        sha256 "17e4e25cf21e6e7b1721fcca6d3e0d6655d6dddc1c25f80e0f95de477786863a"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fnode-linux-arm64.tar.gz"
        sha256 "d4a23592ca1cb532f16c53ab6525fd88153edbce6eb098a523342c327950cb61"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fnet-linux-arm64.tar.gz"
        sha256 "2a67683151969240081de7bcd2baca8de334f0019345aeb0bfb03797744b9893"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.18.1/frun-linux-x64.tar.gz"
      sha256 "1b8926839e17306316ec9ae90140b69147b31517ef306b859f4e8c022b661721"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fbin-linux-x64.tar.gz"
        sha256 "16a8cab5412213ec40ed817d1328f728aefbb0ab18eed6312cde00fbbe926255"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fservice-linux-x64.tar.gz"
        sha256 "3ab9cb0c975bad6862b001b00f315194428882e4de24ba0e2ecbf9a4ee502367"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fnode-linux-x64.tar.gz"
        sha256 "c6f7b76051d099c0cc3988897c42dd1f863b6d287207d147cb400c013a0ee4bf"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.1/fnet-linux-x64.tar.gz"
        sha256 "33c2da240a3fd05536740e897767f96743ab80d142a53c451732b381bfd1be01"
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
