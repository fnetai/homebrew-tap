class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.14.2"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.14.2/fnet-templates.tar.gz"
    sha256 "abbf342aa768140b9d719e602e42753948224e50fb160f13e9409c2b092f47b6"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.14.2/frun-darwin-arm64.tar.gz"
      sha256 "1dd15a0947f5c1a9b86e9a894292164854eaa02ea3e9c74cbf634ede94376c0a"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fbin-darwin-arm64.tar.gz"
        sha256 "e81326a613c63feb61e682eb8eec21de5e8c58180148aeb42c73251598745949"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fservice-darwin-arm64.tar.gz"
        sha256 "8c59ae7177f89f6aa25d1207cee88ffeaf1cdbe62662b141c62460452f5add7c"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fnode-darwin-arm64.tar.gz"
        sha256 "0529da8b66fc95514c64f5a738b33767d4891c9a04145b465249299ec3692022"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fnet-darwin-arm64.tar.gz"
        sha256 "bf348421f772e2e2dbc42288e34a64e85507bf2b3c2d5d9550f1f8adc11e04de"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.14.2/frun-darwin-x64.tar.gz"
      sha256 "b17cc0afcc2425f3c40530769695bf0d8cd59ef2af278666c46f6b03e71dd717"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fbin-darwin-x64.tar.gz"
        sha256 "ed39fc5344bd9c8624560a04e0564f128575286518b469946a35408820d80dbc"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fservice-darwin-x64.tar.gz"
        sha256 "1f8d723ec92c9e7f36a436bec5e2f83404c2432a779a1c0bbcbde685e2c2f26b"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fnode-darwin-x64.tar.gz"
        sha256 "925ff190c775423577ea31abd92c89d7577b69f57a8bd8405797e44273a50090"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fnet-darwin-x64.tar.gz"
        sha256 "78cb6802da7957f6ae46da5a6aa36cf042e52b9cb7392b85b8515e98d0a0dd7b"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.14.2/frun-linux-arm64.tar.gz"
      sha256 "49d1161a58a45a8b89e1293a30873e6533cd52d96d7874171bf64b3818037586"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fbin-linux-arm64.tar.gz"
        sha256 "3bfa1f98690ad3baaab4c9e506beb3bddab2bcdd5416438407a5ac0075914bab"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fservice-linux-arm64.tar.gz"
        sha256 "a6f71eb16e80a644a84d239c43a4adc11131987cb2cfc03decd28d2f213596d4"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fnode-linux-arm64.tar.gz"
        sha256 "c33322d96e5abca507fd7e1754081d406a1815493c45f3713b432896a192f720"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fnet-linux-arm64.tar.gz"
        sha256 "861c57a89fecb7df755734dbe97f1cb53b5ce35118dd3437e2298ae299d1b46c"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.14.2/frun-linux-x64.tar.gz"
      sha256 "6389f30cf576e70c8416885fb405a6c9b31108d9849905f7726ea3cb8f093680"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fbin-linux-x64.tar.gz"
        sha256 "11423a0f920f9c23ccb37d94e2ea38e02b451a62add8badf0b99556b091b2e08"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fservice-linux-x64.tar.gz"
        sha256 "d1ebdc1c09ce3eed4bc66650195586674a88e9b80f5886ac1b31d7dc15589794"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fnode-linux-x64.tar.gz"
        sha256 "2c86ff7b4f7529940a37fe804247198191b00ad068f7fe564a4d396c374f60ed"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.14.2/fnet-linux-x64.tar.gz"
        sha256 "01489e87c3e7a6f7cbe3bbec55748e76d9b7b4468f6d7b973e09e91fa6a891ff"
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

  def post_install
    fnet_dir = "#{Dir.home}/.fnet"
    bin_dir = "#{fnet_dir}/bin"
    template_dir = "#{fnet_dir}/template"

    mkdir_p bin_dir
    %w[frun fbin fservice fnode fnet].each do |cli|
      ln_sf "#{bin}/#{cli}", "#{bin_dir}/#{cli}"
    end

    rm_rf template_dir
    cp_r "#{share}/fnet/template/.", template_dir
  end

  test do
    %w[frun fbin fservice fnode fnet].each do |cli|
      assert_match version.to_s, shell_output("#{bin}/#{cli} --version")
    end
  end
end
