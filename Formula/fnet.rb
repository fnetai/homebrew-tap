class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.5.0/frun-darwin-arm64.tar.gz"
      sha256 "bfb012cc0f8c32581ed3234a951f2ff4b539e892a552ee211d5d3faeac5fec7c"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.0/fbin-darwin-arm64.tar.gz"
        sha256 "24dc938c739fd758374c86aa392975f54c2afab0cdcebc2a294e095901583360"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.0/fservice-darwin-arm64.tar.gz"
        sha256 "35abc038dd507c211f5154911edcb52cedb4ff1ea74f7ea911bbe73173076c52"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.5.0/frun-darwin-x64.tar.gz"
      sha256 "129cdb21786289130a478d4f766f7928b130111055d5e6ee36f47dfe510a4f85"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.0/fbin-darwin-x64.tar.gz"
        sha256 "983f533e32eec94f5c6c2858d0ad8cd514225454e99f4ba49321d7a8df5a7a73"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.0/fservice-darwin-x64.tar.gz"
        sha256 "6f922cc33235d267ba0e386c29dc389b7cd1318497b9d4b8a9a70af9bdc6b287"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.5.0/frun-linux-arm64.tar.gz"
      sha256 "7bde7d4f83b15bda37bd8b03ec9bbb90bb21939272e52f6d08e5351d64cfae24"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.0/fbin-linux-arm64.tar.gz"
        sha256 "edd6fd5ee8830824762a0fe348f9db442fb64352ceb1121a31c1f9a60dcaf017"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.0/fservice-linux-arm64.tar.gz"
        sha256 "8218205524752e129a674f06df4550524a754c6e3cf095e16f09b6b8d47d2038"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.5.0/frun-linux-x64.tar.gz"
      sha256 "605a378c68ce9623d0f18f8187fa51945a3e1a5d9561995965c398abdd7f07ef"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.0/fbin-linux-x64.tar.gz"
        sha256 "ebd1b554eb8bfbd3a298dcd026bdbacda440641eaf3c9b8febfdfc62be501bd0"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.5.0/fservice-linux-x64.tar.gz"
        sha256 "4985e1d43378f5b9541228f3dfee2d10e6896aedc61b12ff7fcdbef322c5b2ab"
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
