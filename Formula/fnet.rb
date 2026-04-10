class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.5.1/frun-darwin-arm64.tar.gz"
      sha256 "0b6f4aa633afe0928bb1928773b14d936d18a1cb4f8c4a30c6b7850457a768d5"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.1/fbin-darwin-arm64.tar.gz"
        sha256 "913c8cac2fc956811e5860b3321e1fde03a7b5a32fe37821c21daf75165863db"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.1/fservice-darwin-arm64.tar.gz"
        sha256 "24fe0a8fe953f2e97dc9089187fa702cb7333dcd5b95e8226c878fa3014be5aa"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.5.1/frun-darwin-x64.tar.gz"
      sha256 "6230f52ba5581b124ec691b6bc3448084f8b17eb1ab192be948596ddd8195f54"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.1/fbin-darwin-x64.tar.gz"
        sha256 "53f04c126b2c19279d94d7e82060e1d2f83675d7861968d4f5e56f239aacae48"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.1/fservice-darwin-x64.tar.gz"
        sha256 "db04a938f500bb9e9aa73fa57db0b969cc47bbb14bba55291f36758d34f8252d"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.5.1/frun-linux-arm64.tar.gz"
      sha256 "8d9220c3f04ac1266163290d353b9226156f2798052112a8693adc4143f056b1"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.1/fbin-linux-arm64.tar.gz"
        sha256 "7a18c88754424db348bc4c41fdd78a3c2ceeb5f7d8c52c9ac22d01e26829027b"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.1/fservice-linux-arm64.tar.gz"
        sha256 "1ccbb6b06fb6637c32902c0425932851763429521df797ae54e41fa8ea8d54ca"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.5.1/frun-linux-x64.tar.gz"
      sha256 "bf9a3f223b7cbcc5469f5f74b46f8aa63207bde7ab8370432b741fda71a48a8c"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.1/fbin-linux-x64.tar.gz"
        sha256 "39eae64a76fcd87a67f096a02cf7f6d9cc635346cfa724d8fb7092dc0a4c5386"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.1/fservice-linux-x64.tar.gz"
        sha256 "02ed2e5d70bbdfbf994b3fe75872e8074717d71b44d241e676f1c6b30092687b"
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
