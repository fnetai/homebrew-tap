class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.15.0"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.15.0/fnet-templates.tar.gz"
    sha256 "7d0582a4c4f17974313277865d079e1b0e95e38388b31e45bc0667209938564c"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.15.0/frun-darwin-arm64.tar.gz"
      sha256 "88bc8e110f727114d25f30e111164482e1008cd62fc97734686197741eb090e9"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fbin-darwin-arm64.tar.gz"
        sha256 "9b0a539516fdd0a455bb39ee3affb3d1ef88dde8ebbd84d0f8e3d63573f0c9cd"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fservice-darwin-arm64.tar.gz"
        sha256 "c6b51cd0b6a2801f8746b9b17c82ec2c0800e6161ffe9d1d0c431eb88237a62d"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fnode-darwin-arm64.tar.gz"
        sha256 "388cd72c9c2aa306316db0fb6c844c80cb9dc0c0491324cbf7b4bc2c6287d1aa"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fnet-darwin-arm64.tar.gz"
        sha256 "3f7cf9f669a52885d73ea682e7c27b21c549ee117fe8e80a0ae96ab036d911bb"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.15.0/frun-darwin-x64.tar.gz"
      sha256 "f8393e1914fec481e8285479b1ffc466ffe1c2fa423c7519f5561af4283586e1"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fbin-darwin-x64.tar.gz"
        sha256 "bda3223526d7b8f63ae8f6f138648e23e17e64c56f027960c6df2d0b8200ba9c"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fservice-darwin-x64.tar.gz"
        sha256 "2c0ede93d110df38bc7f9de5bddb197a7e55e983cc999caf01d6d248449232f5"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fnode-darwin-x64.tar.gz"
        sha256 "cd92cea9697429b86bee410094e45513d7d7331f0be78fbbc7bfeb4d3084f2a9"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fnet-darwin-x64.tar.gz"
        sha256 "100ff5c9e85d3e9dad8f206bfb16c32fd43e0421653aae803b515ad6a54085df"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.15.0/frun-linux-arm64.tar.gz"
      sha256 "bef76ea319ab5810660e4ec73c5315614d01528acadbc2a55838a89e7dd5e8e1"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fbin-linux-arm64.tar.gz"
        sha256 "3684c6880f58f99b85bb8e17edcb59e0096d5d087085c16c687909ba420eafdf"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fservice-linux-arm64.tar.gz"
        sha256 "fbfddc8e5c11d1a7bb763244cf7c17dfc7003f5603fb156d101482d86cdcb468"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fnode-linux-arm64.tar.gz"
        sha256 "9dc5d88615ceed8aa8d63c8e6681ca915625b7b06e7a666d900ee8555228aecc"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fnet-linux-arm64.tar.gz"
        sha256 "765d4bac53e7e7e3796420d34009527c22a55e7edfc27ef48e6334ccc2f2be6b"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.15.0/frun-linux-x64.tar.gz"
      sha256 "c711b038b2692c6f2d97e8ae38afa217621310c4affcabbace9c05632535e016"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fbin-linux-x64.tar.gz"
        sha256 "1f2b90abbfefbcc41e3eb10c2bb37e9eb1aa93cea33a64ec581243731d6d7f14"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fservice-linux-x64.tar.gz"
        sha256 "4edfc1bce2ebe5c3549b7eb269dbf3e518753c008cbd688829548f515ba7e22e"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fnode-linux-x64.tar.gz"
        sha256 "161b7d66ec9ecd39fa754840af037e00b6aab222274e2202a70403ca9312dd6b"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.15.0/fnet-linux-x64.tar.gz"
        sha256 "93f6891ed34457dbd2f8df6a77b8bec1ee806591acbc617de790a9fa5e8b907c"
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
