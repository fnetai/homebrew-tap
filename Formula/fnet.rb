class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.8.0/frun-darwin-arm64.tar.gz"
      sha256 "f6323601b2ab37e38deab4d327a4322472c61a391fa926bc48dc9781a2a01427"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.8.0/fbin-darwin-arm64.tar.gz"
        sha256 "6e6c7b094f8f2f900bcc1a6616ed8607db839823f79e2ad74104066834b05752"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.8.0/fservice-darwin-arm64.tar.gz"
        sha256 "1629872b7babfea6a68a562a2a610f377a96ccc12909cafeb6fff4bc4c564580"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.8.0/frun-darwin-x64.tar.gz"
      sha256 "912f4c45f4ea0b41dd844e0073f18407ca433a48cc7f15ae883b9be89e5d78b6"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.8.0/fbin-darwin-x64.tar.gz"
        sha256 "40fc7afa654d2bf329fc26d6fdd354e5aa5caa35834b70700d7130d45a07f9f1"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.8.0/fservice-darwin-x64.tar.gz"
        sha256 "5e4759fc1b47f8476b3b6c19b5f3adc28eb014db504ebb6b68ed9e22dd500a62"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.8.0/frun-linux-arm64.tar.gz"
      sha256 "6513be4a3d2a3e69349dff2bfdd4a916ae8d75fcfb9c9a5d60ff5e22f8819f37"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.8.0/fbin-linux-arm64.tar.gz"
        sha256 "7584f04183784907197f6ea723b58bf7843878ab9f98af55400c27c7b29995a4"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.8.0/fservice-linux-arm64.tar.gz"
        sha256 "70ddc66f98e8a58bbb06a1f6e9d891334e1d7fe9d6437fec33cd839ce7212a1d"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.8.0/frun-linux-x64.tar.gz"
      sha256 "780b01fca71da2413d1df8a66ca4c8c68432f165ab7b3b29d3276c5cb8eb810d"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.8.0/fbin-linux-x64.tar.gz"
        sha256 "26dd3195f2b808041b0746734cf1a01b1b338143a305decb514fda5af9bdb131"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.8.0/fservice-linux-x64.tar.gz"
        sha256 "9e721bb41b13d50dc0f5d810f13b3bc075a8b33927b50952edb2925c071dbb82"
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
