class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.14.3"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.14.3/fnet-templates.tar.gz"
    sha256 "97adc65bc875f675e1b0fd72ee900e5322487eafa4dfd0fc813c347f707228a5"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.14.3/frun-darwin-arm64.tar.gz"
      sha256 "5f682fabbcd5c1f6a1dacd2bee9e477b60a08039066ae439498806d75fb41d16"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fbin-darwin-arm64.tar.gz"
        sha256 "8f78cf9eb35656b2ad028eb7f3864d2bece94337539276efb136410a19cf005e"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fservice-darwin-arm64.tar.gz"
        sha256 "aa99fac0400cb74fe603b914aac756ae4126d99229dcea3d3a61d3dc7e983dba"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fnode-darwin-arm64.tar.gz"
        sha256 "e9b189b3a0998f846743b5ed76c780c1e7d5c01aff68c2f176f2d8bedfa86cf2"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fnet-darwin-arm64.tar.gz"
        sha256 "9fe76b5d87f79aee7d7810493d8683f384bfc3603756009cb87c126f2816c6e7"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.14.3/frun-darwin-x64.tar.gz"
      sha256 "3be8fb1b9d54f853a66a7ea9be110d95c375f55e3d687d17b4e658bc0a83c254"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fbin-darwin-x64.tar.gz"
        sha256 "684555b6eb3f1d5b6ce5ee56afdbadc40980ed67d6126721e65784c29b911253"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fservice-darwin-x64.tar.gz"
        sha256 "6fc5af8d0597d92ee19be55977cb1bbdc7aa99f873547df37d35067f64ab9092"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fnode-darwin-x64.tar.gz"
        sha256 "fb30409a166eaa190fc6188356872fc37b50af3a177e1f883694b218ec82566e"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fnet-darwin-x64.tar.gz"
        sha256 "3813fc1a68f17806d1467f8ce039f4cb727a1a517003f42f22b4bcebd5e0268e"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.14.3/frun-linux-arm64.tar.gz"
      sha256 "67d4a2bda42fd65d8674a8235628319f04d90af75b4a439c644109bd850c1389"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fbin-linux-arm64.tar.gz"
        sha256 "a93a0c50fe5ea1171f5f73b534e669cbed6360baec77f6d13816a9aa785b75de"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fservice-linux-arm64.tar.gz"
        sha256 "dfb8d626985fe3345577e10fba64e6e839456ec7f157e797ff1f8d2b7b2a8d48"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fnode-linux-arm64.tar.gz"
        sha256 "7966276c2b38504bd6f2daf66e01af47bef547fbd7c5e01fc56fc53e4a9249bf"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fnet-linux-arm64.tar.gz"
        sha256 "32278bf3bf037c4e8c924ed6655ecc82fcc9c071958298a0fd25edaa83c6c6a4"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.14.3/frun-linux-x64.tar.gz"
      sha256 "77afe603456291b91b88da581c076b046697007019aa4a1b1785534c92276234"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fbin-linux-x64.tar.gz"
        sha256 "dcf13dcbbf9d8a68eeb2f4d0c581c35a3d2bbbcebc179c1026454903acdc4fb3"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fservice-linux-x64.tar.gz"
        sha256 "9928dd74370b361cc01dc572538a4e7c73af71728a6a8a18ca55dd3575db55fe"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fnode-linux-x64.tar.gz"
        sha256 "75c0b982115c710852785d05b4001ce7b7dd4e413a99cab9c9460dd41be01d30"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.3/fnet-linux-x64.tar.gz"
        sha256 "e39fde7ee891a99f9d7697468ddb7f4dddf4ba5e8d26da6c912d173abeefebd7"
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
