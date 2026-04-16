class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.16.2"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.16.2/fnet-templates.tar.gz"
    sha256 "f9ea31f2fb8427d55fb33980835da2b18c5c211c2ce90bc7aeb06d9ee815dd04"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.16.2/frun-darwin-arm64.tar.gz"
      sha256 "cf88a86244377ea9af8428f014f50c24a8dd26bcf21138680436622586e81887"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fbin-darwin-arm64.tar.gz"
        sha256 "8b81ade8ef2cd846cd9267f270a4a80a4318c10e1ee747d5ec16db2d77609745"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fservice-darwin-arm64.tar.gz"
        sha256 "4bc5d255a4ef2bdff938b4220d7e5a3fce7c638d95de86eed929ae47a0d7e7c5"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fnode-darwin-arm64.tar.gz"
        sha256 "a876b821068e700328371c88948ffc8f60113a478a8da5d7dc02329389935bee"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fnet-darwin-arm64.tar.gz"
        sha256 "49c67e72047e9e85c0808e04bcdf1649379816a0f3f2ba4fefbeaadcdc5acc4c"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.16.2/frun-darwin-x64.tar.gz"
      sha256 "e2bec3d45ea209866e8e5e8a9ed73d477f95e02608ae07786941d61233db0219"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fbin-darwin-x64.tar.gz"
        sha256 "d185df9de8da00a70ea0f3f104a6f8bc70c5ddb3ce23b3fbb8bd1dafcbbb6978"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fservice-darwin-x64.tar.gz"
        sha256 "9fe03729dd009320cd8a79a3421a0c33ff679ec9bf4d5ed73f44d96875aa62a0"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fnode-darwin-x64.tar.gz"
        sha256 "a285b644107a618ddccf88c4f1fde7b1d859cf750c89c26587648be81d497fbd"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fnet-darwin-x64.tar.gz"
        sha256 "66fe5292ae3906ae6990e7f401e6dc62c6ac73c3bbb0042bedfd7dff7e5aee94"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.16.2/frun-linux-arm64.tar.gz"
      sha256 "08c0a285165df864f070d0c29be18b37217a2d0ec0c980fc58a44c5bc6e30baa"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fbin-linux-arm64.tar.gz"
        sha256 "54f5f3d38c966cb6c9ada1f93551f6cf6c6d51cff99936fc4b7d7bc628ff4555"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fservice-linux-arm64.tar.gz"
        sha256 "58f6e1b7a9cd8eff7454e5b210681f56e666ae526b756324352a88110ab03ace"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fnode-linux-arm64.tar.gz"
        sha256 "b822208f5eb627383575d2a292491f69a811321352b6fc33d472410857cbd954"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fnet-linux-arm64.tar.gz"
        sha256 "5392239dca24218f5ccb43d6f7b84af0ccf2852fed2797d9e816cd6d988fa7ec"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.16.2/frun-linux-x64.tar.gz"
      sha256 "2046cd7ee2fcce2949fa6fe8501f0c240d0d2ed464bbb11927f926b39038a604"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fbin-linux-x64.tar.gz"
        sha256 "5ba10d4deadbb42b1509abb1e47481236cc306dc0a459cecbb9b538b6cc978f6"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fservice-linux-x64.tar.gz"
        sha256 "3431d39c12265dcdea242fdf7cfcf172e7b7c65afef59fd7c4ee6dcd97596e52"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fnode-linux-x64.tar.gz"
        sha256 "d9204526f21422d32ef95f6a9b5beb9f2064c5cc3852b05e18aed2e0020932a4"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.16.2/fnet-linux-x64.tar.gz"
        sha256 "dfddf5455ea1fe7d9f547d69c6f162da72e24d5114ee2ec5032628763dde3578"
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
