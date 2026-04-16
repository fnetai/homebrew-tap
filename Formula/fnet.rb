class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.17.0"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.17.0/fnet-templates.tar.gz"
    sha256 "f0092093c11551d4e6dd83704f752629598398109566ce0796b4c79cc023f036"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.17.0/frun-darwin-arm64.tar.gz"
      sha256 "c3801931ad6e2945310908e956bca029931ac729ec8a7d26cdbaef7c18d2f027"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fbin-darwin-arm64.tar.gz"
        sha256 "3d2858d400f1bea3fd864dc5bc01bce999b0234c06a78388ad176c193f091756"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fservice-darwin-arm64.tar.gz"
        sha256 "0374bfd229fab019a3ad22ec2ab4bf2bc6d2b35ce9364a13a39066ac96509f10"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fnode-darwin-arm64.tar.gz"
        sha256 "4d7a2721c088e265569103cd9c4bb08bd59e8e08fe74bba23b5770d30b50d333"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fnet-darwin-arm64.tar.gz"
        sha256 "0a30c3cd2811fc9397c7fd196244047af6dd8a63c67e80b632f76d5572ff6e6c"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.17.0/frun-darwin-x64.tar.gz"
      sha256 "e69060a41c5c4dde213fed5069265830c0ba96208e7ddef736acb082381e58a6"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fbin-darwin-x64.tar.gz"
        sha256 "b99b18d5a4f2c729aaacae7f4289cd32ee85513966f497810eeffac6a2161cd2"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fservice-darwin-x64.tar.gz"
        sha256 "a3c0254b0ce593e157304e6c49551c8489701fc851eae68324dc3cdc2e6d37d7"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fnode-darwin-x64.tar.gz"
        sha256 "c9bbc362286b7db2ada7248f7fdbb3b11068f6b07ccbb9488e368ca13f841d03"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fnet-darwin-x64.tar.gz"
        sha256 "474ebfc7c8f7545fe5f635510488bd0b5efa7fc49c5243a92ba53c776ef3bbbe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.17.0/frun-linux-arm64.tar.gz"
      sha256 "83b524da5cf0e22c143d69da8b3a2455876ad8c83a9fe000f13bb9a24bf26aa8"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fbin-linux-arm64.tar.gz"
        sha256 "a4c12c475efd578d6346380020ad78ee719d2cbdf410abd8d80676127364f4ae"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fservice-linux-arm64.tar.gz"
        sha256 "fd56eadd1a07fe488e044d6dbe3e7aa61423cccad70c699d426fd9afaabb4285"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fnode-linux-arm64.tar.gz"
        sha256 "82ed0458d1a06482f9a54771e384257dbb29af9e41fc0a046ad396d890f5fb25"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fnet-linux-arm64.tar.gz"
        sha256 "79dbdbb29895c48ddcef31811b6f427f415045ba4c635eff23de89bd368323cb"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.17.0/frun-linux-x64.tar.gz"
      sha256 "3f309a751e62b0a4972eda24a9552f8f7e9fecc9ea325e00a9ae3b111dbb04da"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fbin-linux-x64.tar.gz"
        sha256 "30ef2b9d90d68c55e573331ad29ab5cb6232f97f99dba3f287b29481a4114814"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fservice-linux-x64.tar.gz"
        sha256 "bd782d48aa206b5a07144d2decb7d9b99a2bba1ae5ddf4c02fd3e6f547fc10d6"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fnode-linux-x64.tar.gz"
        sha256 "0af080eab01e9088d417e3fc56da995661a9c71f2dda98608af4d0d7491a3e08"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.0/fnet-linux-x64.tar.gz"
        sha256 "4dc2dcd4398a2969bbe1d094cd71cdc8106f1081407c63841b08bec92d375a82"
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
