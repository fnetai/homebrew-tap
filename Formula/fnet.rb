class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.12.1/frun-darwin-arm64.tar.gz"
      sha256 "da441248ea726202ffbb6d265f2f30e24ae0d8c7b2c03a727b1720d4349362aa"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fbin-darwin-arm64.tar.gz"
        sha256 "2827c897a6582004d757066479b408c063273e711417e1f6e3457c1e28e590fa"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fservice-darwin-arm64.tar.gz"
        sha256 "bd0e93ab16d77b3059137afb612e932f04ac7552bf4cd4581cfce03d970565fc"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.12.1/frun-darwin-x64.tar.gz"
      sha256 "fca6711b2790cfcba36698b5e06e6a2e193d57b4419f716980651d1192d49b8f"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fbin-darwin-x64.tar.gz"
        sha256 "1264eb0a52dd9ad07b4ffb0a428514f914e04937b47e62eca0518d44deeb844f"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fservice-darwin-x64.tar.gz"
        sha256 "1ddf55817cc98e221b873d44fea747da028ebbd9e2ffdcdbd22aa5dbacf92fb5"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.12.1/frun-linux-arm64.tar.gz"
      sha256 "d00ccf69f931061953e864a8f86dde8990a4952ddae493c89cea12fae5d3f0a2"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fbin-linux-arm64.tar.gz"
        sha256 "af1465a018e7ecb90879e4258f03850d7eab39f059c40f5d18738852bdf6efe0"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fservice-linux-arm64.tar.gz"
        sha256 "fb2bd942fd98cad9820642715d9f23294157b58465ddc9a72880fe8edb5b6197"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.12.1/frun-linux-x64.tar.gz"
      sha256 "6a1e520e609cc5d8bca5fbd9f044559f4a7d07baac9208b09fc6b7af0ad15c1e"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fbin-linux-x64.tar.gz"
        sha256 "73f6aebd1e4fbf92b3b518d38fc10d7af3a56d64b58ba03e3c671413668cb295"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fservice-linux-x64.tar.gz"
        sha256 "4f6fb38c7183572f0d2cec3030d0fd2021cd7903a6541871e2a6c744e3d36ebe"
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
