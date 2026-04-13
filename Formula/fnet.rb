class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.11.0/frun-darwin-arm64.tar.gz"
      sha256 "cea8278a2ebb553b906bfc1f60f4ef3e1e7b54ca68d45a01e1d0af5c85721e32"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.11.0/fbin-darwin-arm64.tar.gz"
        sha256 "1f38e4cb822a7ca3e656b1c95945e50eddaaaffa6af591aa07635fc02aec0ecf"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.11.0/fservice-darwin-arm64.tar.gz"
        sha256 "afbc3d82e4b34abe9705c7d1cddaadccf33b3a786377fd0afcf16a0da3df5697"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.11.0/frun-darwin-x64.tar.gz"
      sha256 "45c4fd9a264354a0d63fe3cae7f5ee43482a060bc364b8c47c1d0aa99a503c00"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.11.0/fbin-darwin-x64.tar.gz"
        sha256 "3273a1bb520cffae2061e340046e566065c6ff322d8199a22a3a22a796f17245"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.11.0/fservice-darwin-x64.tar.gz"
        sha256 "4a2c098c578ffa41d7b762f4f1ea5aa3f60c771a2efbd2d195fe8149dd33cadc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.11.0/frun-linux-arm64.tar.gz"
      sha256 "135cdf9de964b3bc8ff414e83103aa876f89f242c9b7182ec4a470d401ac48cd"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.11.0/fbin-linux-arm64.tar.gz"
        sha256 "4964947a71345c04acf91f5efd4a6f8ce0597177c863c8037c222531f69ad96f"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.11.0/fservice-linux-arm64.tar.gz"
        sha256 "a53e0af1e1f4bdc19b9671229ed2d494a4de80d73ff5ef0645a39d668fdde471"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.11.0/frun-linux-x64.tar.gz"
      sha256 "bd8d6d02cc255c7f25a0461f6de9e02764697ebe2960d8d862d2be725f6fa708"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.11.0/fbin-linux-x64.tar.gz"
        sha256 "ad39458c85ed10793d2870658f2e0770f56bf6494fd1635a5ea0fae72d948580"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.11.0/fservice-linux-x64.tar.gz"
        sha256 "7674e5b3bd497eceef2bc415f159d79814e732cc62edb8a9de4b4d5fbda6de57"
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
