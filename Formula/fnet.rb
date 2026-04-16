class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.18.2"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.18.2/fnet-templates.tar.gz"
    sha256 "26adeb5c3a07d058c3e3ff5ab74776d757350e6941573d3e7116a0bcf1026d0c"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.18.2/frun-darwin-arm64.tar.gz"
      sha256 "7175f755b96e92ca14c02842d3c14c32ff5a33d135dc9b88723b6f18c512dc07"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fbin-darwin-arm64.tar.gz"
        sha256 "eb3c03ec514bc34555ff5141f539b02bc7d113c817cf371aabc0e01c95fa9c27"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fservice-darwin-arm64.tar.gz"
        sha256 "0c86cd29cdc8d9320be19b7dee5fd3bc3034a4946280196d321dd23f16d65b26"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fnode-darwin-arm64.tar.gz"
        sha256 "f4e2a4080211292680c47a627c4c311ba11a0e1252c0ada0247834d7c4fa9599"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fnet-darwin-arm64.tar.gz"
        sha256 "379f34218121c0f71c277d6ff9725c3966e1f83ca70807079b70b87eed21031c"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.18.2/frun-darwin-x64.tar.gz"
      sha256 "5397f62976ca21ceae10f5fdf951edbe0fe5b6bc453861bd1294c986fcad1218"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fbin-darwin-x64.tar.gz"
        sha256 "f4bd6249eab2dcb9feca98a2890656edf798cc0003965b050d0669e091eac083"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fservice-darwin-x64.tar.gz"
        sha256 "aaf3a4d47cc92b056be66f53177474051be9a839df142b716fd1843e078557a1"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fnode-darwin-x64.tar.gz"
        sha256 "d0c86371c097a514f974e6fd953c4fd8fc9114ab6d368d62cb0760585a5df3b6"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fnet-darwin-x64.tar.gz"
        sha256 "21e98a797bc212429ea8a9e693b479b463bea82734f2bcb5820b4cece9912c1e"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.18.2/frun-linux-arm64.tar.gz"
      sha256 "89d378644b145dc7259fcf29097f6adeef26028ac1af5d0fea037dca39080796"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fbin-linux-arm64.tar.gz"
        sha256 "29366266ff2dc47ef2153283c29b89e01c777169bf816f798bc2cdb7422cf3b7"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fservice-linux-arm64.tar.gz"
        sha256 "27a424f481237f4eb9632f74eb05e8a192c3ee956da49a5d748c50a9f0bfad13"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fnode-linux-arm64.tar.gz"
        sha256 "45f1575f856968923e8bae321766c2c4ce73d6e47fe0ce6cec0249579451ae1f"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fnet-linux-arm64.tar.gz"
        sha256 "c1682d9eb92d0ef963c1bccdaf687673b932c1a55dfb806bd3aa08ac625d21b8"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.18.2/frun-linux-x64.tar.gz"
      sha256 "2ae746a2867e20413b87bd2101449974a96de3b009c707c2aca3af26cf4f5a56"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fbin-linux-x64.tar.gz"
        sha256 "ca56411a387e2e208a7f9da38458eeec6898e57c6ee343ad094e20899d288774"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fservice-linux-x64.tar.gz"
        sha256 "29a796f9be35114fdd7c64073af61cd1784843b88c13e9a5ca6e6331fd41a1fb"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fnode-linux-x64.tar.gz"
        sha256 "a5612722e4279c3ed35422ff5dc1f62414d07c5dce65a6538ea090e45ecce1be"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.18.2/fnet-linux-x64.tar.gz"
        sha256 "d2f2e81a9aa11e45985e730b44257c82b8c8e48c879d3fa42e442b438c271eab"
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
