class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.6.0/frun-darwin-arm64.tar.gz"
      sha256 "9b8d151a5f1c2108156d028aa8fbfd53044fcf85a1cf00903e2954ee516666a3"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.6.0/fbin-darwin-arm64.tar.gz"
        sha256 "769795cc7a30a2826546c5a75dbe50fa435f96767b3d5e32baf871fdcca61882"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.6.0/fservice-darwin-arm64.tar.gz"
        sha256 "f8d3e545e7306820db30389289ea91ec8ef7c302b36a9d0c81f3c8ed7d3632f6"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.6.0/frun-darwin-x64.tar.gz"
      sha256 "6e8e14988c713aaebebaeac191f3af1f19b9afc3c26cd40112066d97c58c48e4"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.6.0/fbin-darwin-x64.tar.gz"
        sha256 "5bee85967049a67906bb235252481376ed4fbbd4e5cf037e3bad3e33962d4a15"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.6.0/fservice-darwin-x64.tar.gz"
        sha256 "7a26ed9807aa51e8cbd9219c5be03959a6e573c0d6fc4b8526a42d84c313f825"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.6.0/frun-linux-arm64.tar.gz"
      sha256 "81a0b8079c7e6fd8448c8457031dab5b66456055cf869592ee5014ae4efca198"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.6.0/fbin-linux-arm64.tar.gz"
        sha256 "785a59cbb547959b21d93ae7f82c5cb76402657b3cbd405de0cb5f3d52240bbe"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.6.0/fservice-linux-arm64.tar.gz"
        sha256 "b3693cf6ae54d3ec39020820337ded09701cd1b31bf70afb186c69b60ffd5c68"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.6.0/frun-linux-x64.tar.gz"
      sha256 "9f98518e00b2576b93d0d31883cb17bd46c647a14bb35dcfecf443b5f8913fe6"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.6.0/fbin-linux-x64.tar.gz"
        sha256 "89c5bb2484308f1a940acc78325acf507582a5d6130dcb4122a34fae24cded1a"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.6.0/fservice-linux-x64.tar.gz"
        sha256 "925ccb415a070d52b413b1817f1cd9ca1efe85d584f433b9cbe0bcb1e64ea646"
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
