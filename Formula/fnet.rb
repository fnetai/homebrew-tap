class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.16.0"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.16.0/fnet-templates.tar.gz"
    sha256 "227eeba29b5dea22043459305bdbc21c7d37ad1d551844c11fa7345ee52717fa"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.16.0/frun-darwin-arm64.tar.gz"
      sha256 "ca8638a4228258d91241573118d7f6f8420f71cd18c0318930dceaa4c85d877f"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fbin-darwin-arm64.tar.gz"
        sha256 "bd6df2cec4ab9204d95d1c430bf78dcc96d8239c852ac9137efd0021fa07fc45"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fservice-darwin-arm64.tar.gz"
        sha256 "fc3b113858c55f2ab73a69d162a947215b9e6f5151bd1053dc43ef12343c4742"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fnode-darwin-arm64.tar.gz"
        sha256 "bb77758ad1e08e8e43917c356583ed0f1c3b14d7f8c15ec1ba471c7270d17975"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fnet-darwin-arm64.tar.gz"
        sha256 "ec345e15f29a7d74093f4f9273d721c4ec4713f0fa58a693d6f0ca5c27c23409"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.16.0/frun-darwin-x64.tar.gz"
      sha256 "5e3a9f803ecda7c268f7f856cba861688c1cb6ddc272b6e987e7b2114005ec85"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fbin-darwin-x64.tar.gz"
        sha256 "f938778415888e5ce04006fe57641ec63f1a6ffc295dfb9da76d330bcc8cd5c5"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fservice-darwin-x64.tar.gz"
        sha256 "b46c9fe326a591cbfda01372394258b9e12360c6d92389e3fe18898e80f8cfa0"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fnode-darwin-x64.tar.gz"
        sha256 "f093e8519bd7273de10c322172be80df3516cc3f06dc4208f0830d559adcd08f"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fnet-darwin-x64.tar.gz"
        sha256 "9c0b12c9c419659ca3765bf099b14692fe2e887c69fac2581d6f19ffd3a0f239"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.16.0/frun-linux-arm64.tar.gz"
      sha256 "fb04ce972f9d0211e2659b6f5d5a1dbf7f7c422173b7cb97b85beac922f64aca"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fbin-linux-arm64.tar.gz"
        sha256 "a1499d3c5da433485e6647c0c54bac979a04b0df6ece402090cf689c1ebe3ed5"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fservice-linux-arm64.tar.gz"
        sha256 "29a023427cd9a86ccc0420bcb9223543e2aaf6e640e2a6088cafe2bee6e25b4e"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fnode-linux-arm64.tar.gz"
        sha256 "bf86b66826aec9b02241ac64c506fae5ef8f9d20eb9acba2c5eb72a9eb1f372d"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fnet-linux-arm64.tar.gz"
        sha256 "467ca4d0378f14acbaed920d423a41657984ead382c06bb6cc0a14a513ee00d1"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.16.0/frun-linux-x64.tar.gz"
      sha256 "77e419b4b3540c053e9b1cfffa5170ab2b47864a6d6bde4e89bd067e0bdae1bd"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fbin-linux-x64.tar.gz"
        sha256 "8455e2d98196d78610968e05b69df5825941329198b3799296f7324d70610acd"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fservice-linux-x64.tar.gz"
        sha256 "571b45be7f42c88e0aeda98658998327e1d122640af36b0d1924ee118377a613"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fnode-linux-x64.tar.gz"
        sha256 "346d847196e0cfbd5fe09195616c104b54d2a342bb3f3355dbaefa16da8b4db3"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.0/fnet-linux-x64.tar.gz"
        sha256 "dd3791225f599ec499872fca4c4579178280c225f43b51d5af0cf8a44dc4c13d"
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
