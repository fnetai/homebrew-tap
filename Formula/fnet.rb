class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.9.0/frun-darwin-arm64.tar.gz"
      sha256 "e3c60085b83fc54076391b88ce872f53ff59d364cddeee4a4342633de8a3c790"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.9.0/fbin-darwin-arm64.tar.gz"
        sha256 "4f858a2394a0ca2b4b58cbee4c3158f52375754533d4f63eb5823d2f868b780a"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.9.0/fservice-darwin-arm64.tar.gz"
        sha256 "aacc386eb07a78cb30161e2ab2aaa7151b6b5c463085cbe2354f5f270ccce148"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.9.0/frun-darwin-x64.tar.gz"
      sha256 "657c178de8c5fd9a676da47e76166445f75b6a06803a154e25951ad5b12f17d7"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.9.0/fbin-darwin-x64.tar.gz"
        sha256 "c1c5c5de9abbc689d4d835c6f366f4ba15465b9fcc2b3f55336bdfa9fff680fa"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.9.0/fservice-darwin-x64.tar.gz"
        sha256 "28466f5b40476a5ddba414b44aa65ab21f554321f29169019cc072cbb9a5da57"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.9.0/frun-linux-arm64.tar.gz"
      sha256 "3b54566751ef1416a536b28141e37902701a4ca73b7e5a447c8e33b96b3e4af1"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.9.0/fbin-linux-arm64.tar.gz"
        sha256 "36bef9729494343947a1c2ab3e7f3aa60eecd89f407bd2bde9f5dd14fe8f9ce8"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.9.0/fservice-linux-arm64.tar.gz"
        sha256 "d273dcb2c4f3095d983cb08f53f9ac59d21e19a0578568100fdeda6ccb420be5"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.9.0/frun-linux-x64.tar.gz"
      sha256 "2c863b9d22678176dca498daa9de56d267f09b1209521c0f3155cd87db090c45"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.9.0/fbin-linux-x64.tar.gz"
        sha256 "4836882f454b435344e801d235c996dbea0f482840bb5848de37b5c5fe65811f"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.9.0/fservice-linux-x64.tar.gz"
        sha256 "4ec9e94278d6e3702c06f83cd3c984eb07b403049e48ba211fb2c8bb7d1c09ad"
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
