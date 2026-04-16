class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.14.1"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.14.1/fnet-templates.tar.gz"
    sha256 "c2d701a1f70d0db457485f7cd69916d56e5f1e028a2a7cdc2cca8db416b2274a"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.14.1/frun-darwin-arm64.tar.gz"
      sha256 "03f0696846e50b034b56dd128da856cf1d1ea38571336fef8d81b9e7d5c1cc11"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fbin-darwin-arm64.tar.gz"
        sha256 "a925684a188cd96ad5d298b0b7b6550a5501ca07dae725d8975259cde921067b"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fservice-darwin-arm64.tar.gz"
        sha256 "28ecc56d81ee222ca9aeb65a2c7fb39de7e355ed6d37b8f38bb65239f3e66113"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fnode-darwin-arm64.tar.gz"
        sha256 "1374e99117e5a8e9f13b757d7712a4429d92d2392b3a5ae7cc13f474a8d18b50"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fnet-darwin-arm64.tar.gz"
        sha256 "98b8fd4fc289064d795017aa122a772a0dbe8fdbbc208de4038383ce8d600193"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.14.1/frun-darwin-x64.tar.gz"
      sha256 "9121beed672576c8bcc00b7a65213545acc840cb2b221802d8bda1a16e420e1b"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fbin-darwin-x64.tar.gz"
        sha256 "e55a26d7906e1db199d67c052a0ec22349e01756147accab55a1962eaf091319"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fservice-darwin-x64.tar.gz"
        sha256 "c13a29eaace5b97769d9b88c885251d18fc1fd72a1136841584101ac85cbe73a"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fnode-darwin-x64.tar.gz"
        sha256 "09befe19f825dbdc4a6ad7ef158ef59d771e95c0f79972fe116fc3241160483b"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fnet-darwin-x64.tar.gz"
        sha256 "015f3260a5a9358113dee2e1c6287cfe5619b08bcde4de6a08b62108d7d3cc55"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.14.1/frun-linux-arm64.tar.gz"
      sha256 "4a43e85431abce0829159224bc65c92527e5f30f617aa7c856e387391109d5a1"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fbin-linux-arm64.tar.gz"
        sha256 "82bdad638482a2a1fbc2185e426e4b92c10f42cbff39898c40416c8481e6e1f3"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fservice-linux-arm64.tar.gz"
        sha256 "f07233946a06627e0fe95d92736a8a3d311d4edf353982442d254b493d43cd1b"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fnode-linux-arm64.tar.gz"
        sha256 "59d7f38520217ea8e4a777d523d6e57410e95d6fb8554f6a6b7fc5512a76fe94"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fnet-linux-arm64.tar.gz"
        sha256 "04224b5605b4e65ed5ca89864452bd4005a3fe0dd79220035648e2fc91915eb5"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.14.1/frun-linux-x64.tar.gz"
      sha256 "93635122832776cb22023682632efd90da9968eee1407a75fec978f06427ea19"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fbin-linux-x64.tar.gz"
        sha256 "2da37327e4af57f199e25905c3dad5d50bc2b1f099d6ee2dbd9bd92d49bd5d64"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fservice-linux-x64.tar.gz"
        sha256 "a5be6b502fa67de9a0b049c3a15d2c531b5e90fbd540fdb139d0ca4abafe0196"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fnode-linux-x64.tar.gz"
        sha256 "136836d768bb00455b0727a055ae6230544c87638a92b0f425f9465a68aae01f"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.1/fnet-linux-x64.tar.gz"
        sha256 "48b8bdf7e43ac5680fa06cf48910111fdd82c21e8a02ddff98fddea5ef3cb6c1"
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
      (share/"fnet").install "template"
    end
  end

  def post_install
    fnet_dir = "#{Dir.home}/.fnet"
    bin_dir = "#{fnet_dir}/bin"
    template_dir = "#{fnet_dir}/template"

    mkdir_p bin_dir
    %w[frun fbin fservice fnode fnet].each do |cli|
      ln_sf "#{bin}/#{cli}", "#{bin_dir}/#{cli}"
    end

    rm_rf template_dir
    cp_r "#{share}/fnet/template", template_dir
  end

  test do
    %w[frun fbin fservice fnode fnet].each do |cli|
      assert_match version.to_s, shell_output("#{bin}/#{cli} --version")
    end
  end
end
