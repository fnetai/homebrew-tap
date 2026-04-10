class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.4.3/frun-darwin-arm64.tar.gz"
      sha256 "ba468f60122836068d3017db37be716cd3d33b63bc9cba3aabca445f1f991f3a"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.3/fbin-darwin-arm64.tar.gz"
        sha256 "5a4ec561a09f7b39a689fceadb5bbae469b5148eab91e5ed4f7559f2b614150b"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.3/fservice-darwin-arm64.tar.gz"
        sha256 "a025948cd175f14449eb6a781b962ec06036d3c6ca636060333070b3dd1868e6"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.4.3/frun-darwin-x64.tar.gz"
      sha256 "eea4e1e3b7fc4adb790928bf80257bf9fba478335de193fd5aebd5c0889db2c4"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.3/fbin-darwin-x64.tar.gz"
        sha256 "49e2cbbfcdcd26c49f67b31b736bb9b5e56ef6f37899023d2b4dd7f08bee0183"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.3/fservice-darwin-x64.tar.gz"
        sha256 "314ccd67ed3bd053d59f160ea829b5acb60ad4b55e5de50652dadeaddf828fc0"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.4.3/frun-linux-arm64.tar.gz"
      sha256 "beb0c79b6b21404153f043cdab611fc7c3704a3db95ba5ccb54a1d9617368a4b"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.3/fbin-linux-arm64.tar.gz"
        sha256 "4c8388f52392e2999f6977429dd8dc0cc72af92d31961f22fcfae54e16de244d"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.3/fservice-linux-arm64.tar.gz"
        sha256 "eef68dd24ecdcfa7ac946e17be46a1789aae8f81e106184f2afcd2a27d8fa811"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.4.3/frun-linux-x64.tar.gz"
      sha256 "351183ad05b56045379ed6bb7b101df99d0b804aef96376cc5a87f29fa81272e"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.3/fbin-linux-x64.tar.gz"
        sha256 "33b36b8bc871bd55729f503a96d32957b736c84630fac38cd3a84d990da08533"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.3/fservice-linux-x64.tar.gz"
        sha256 "704de9508988e9d11c0d391cf449e6ac2e1e14433f51c6d231595fc232573461"
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
