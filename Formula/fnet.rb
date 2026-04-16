class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.17.3"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.17.3/fnet-templates.tar.gz"
    sha256 "3a521f00e401e89aa1200c5eefa8e631751ae64763632ef6da0b0f054c894b71"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.17.3/frun-darwin-arm64.tar.gz"
      sha256 "021c483fafd3b11b171c6ce0a2906758b5814e20fa1072dd8907601b2b516b4c"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fbin-darwin-arm64.tar.gz"
        sha256 "081cb47e6713a67dba31edbf08a48462040f6eea729b8858a44355d2a37574f4"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fservice-darwin-arm64.tar.gz"
        sha256 "73833cd4750744518e1791a99a3dc117ef7f72ea919ae09c765868c74a51e851"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fnode-darwin-arm64.tar.gz"
        sha256 "fb2cfb6b980930185ef1b18b90616b8426ac40e592c4f1a2749efab9651ee728"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fnet-darwin-arm64.tar.gz"
        sha256 "3eef982372773933cae207ad2f237e622198a2458468e7c1a723994182094361"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.17.3/frun-darwin-x64.tar.gz"
      sha256 "4a85920078f036fdaab83efa7818c70095dbd0ffc07f5291b68950960c59dd8f"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fbin-darwin-x64.tar.gz"
        sha256 "c6dd951988c6267059b8b80e531b16ad00b12309104b96d6322099e7437f9ffe"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fservice-darwin-x64.tar.gz"
        sha256 "3204e87c0e397b8e3a42393e05ec7155cd3bbc6ec545981efc731502a350c87d"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fnode-darwin-x64.tar.gz"
        sha256 "5478883dfd9aceba88a53a093109cf98aa64b452649630aa2e3e7721bcb1597f"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fnet-darwin-x64.tar.gz"
        sha256 "f621afd161cfbf83829ebdc6f73ec2d2e1b2b6a64e4a0d7d50bb0535054a8f28"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.17.3/frun-linux-arm64.tar.gz"
      sha256 "99cc2ee6f2584fcee68f06023212532f75dd6ab7f73b225513b0d4867ffdfafc"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fbin-linux-arm64.tar.gz"
        sha256 "16e818ac3f9220f00dd7dcf878c7e3f048c766a6c081569f293d50551b6df1c2"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fservice-linux-arm64.tar.gz"
        sha256 "00f8098066b376f4cdeee8300acf89a5dfc8263283393d51d26db87c22896a8c"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fnode-linux-arm64.tar.gz"
        sha256 "be64d095b6a1df04b600d8469e7d1b4d44c7326310382062221952c6e81a558b"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fnet-linux-arm64.tar.gz"
        sha256 "ebaa1c37050a7fdfce5f4e870da57299bac8d688c3c5d0ea2ddd98a4b0648de1"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.17.3/frun-linux-x64.tar.gz"
      sha256 "a7a8578c5664a8ce7f570f8293fc168923ede15e1677247ebf24d781d0db4018"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fbin-linux-x64.tar.gz"
        sha256 "e472d304dda83a150e0b4431599eef15a87ac389add5c537bd9eebf77645f390"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fservice-linux-x64.tar.gz"
        sha256 "dd3471b46ebfcba0d717eb9ea1ac2d30a7b8ea3fe0e0896e96d40e189eb661b7"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fnode-linux-x64.tar.gz"
        sha256 "73998a72f3621d8e2ba23a27f50eebf9f53c9f032ec58ce006bdaecdb2cf409c"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.3/fnet-linux-x64.tar.gz"
        sha256 "d03d7aaf999549c6d15f27f0695d49dfc85a1eb557acf6ed26328396eafab18f"
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
