class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.13.0/frun-darwin-arm64.tar.gz"
      sha256 "0145c4daf0bc626f5cd33800028366c2f7ee91993c23f99869fa4358d0f67a6b"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.13.0/fbin-darwin-arm64.tar.gz"
        sha256 "873016656ebbdc53ab878f8fd5327e3bb67696c8a4046b6c58ff53b8c972133c"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.13.0/fservice-darwin-arm64.tar.gz"
        sha256 "d1b9192921c39d02828882fa460a693dadeaaaa77d604fdaaf1e284e232f4061"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.13.0/frun-darwin-x64.tar.gz"
      sha256 "10291825a719a45b5700ac785424f7fef7e6cf66e317587227265ca21f1cb62e"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.13.0/fbin-darwin-x64.tar.gz"
        sha256 "4308b3ff37da8ab84eb44898a3c1d90e6d17a794c78dc3a787f9b68929cf8da8"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.13.0/fservice-darwin-x64.tar.gz"
        sha256 "6198125a258231d840d8604afb927b82ab95d355e06551c7f8e15003af4ae85e"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.13.0/frun-linux-arm64.tar.gz"
      sha256 "07ce4e69d14243438bdfd34714d53d1b9cf0a255b0000cde04f7782cd3883520"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.13.0/fbin-linux-arm64.tar.gz"
        sha256 "983187803407a59fc8cd97cb403b0b788f6ce1ebf28f6891a373d2003ab3f3bf"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.13.0/fservice-linux-arm64.tar.gz"
        sha256 "eec11341e5d26616a7f0c854eeef6c46a482ba64c224c66b93ef2a995e176630"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.13.0/frun-linux-x64.tar.gz"
      sha256 "b264a9821bd526de028f2dcf08dc8d4536197413e0cc3ee4696ea77c3c2b5361"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.13.0/fbin-linux-x64.tar.gz"
        sha256 "5870d011ed6b5147aea5cafb4cbaf2bb08f483d3eea023990d30d8a9558c5b3d"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.13.0/fservice-linux-x64.tar.gz"
        sha256 "19fac08f4b8296234d6a94434502166c33cc20ea13c9fb529e5bd62f04d60de7"
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
