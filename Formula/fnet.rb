class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.12.0/frun-darwin-arm64.tar.gz"
      sha256 "b7f81262f26a83ddce2adcf969e2939482f6f880b70614e72c15b728bba423bd"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.0/fbin-darwin-arm64.tar.gz"
        sha256 "f2ab33cee324f567e35f308f89c2a682e07587ab3855bac6c8955a3b9b7549f4"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.0/fservice-darwin-arm64.tar.gz"
        sha256 "1dfa35db0cedc39545d8eeb89bb4de8efe2ed20c9f9b69f460e319dbcc7cce58"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.12.0/frun-darwin-x64.tar.gz"
      sha256 "736108bfe1c5563ab73d035746a4dddcabd32b97afc4615f303ce4e24451dd2e"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.0/fbin-darwin-x64.tar.gz"
        sha256 "313a05460eb8e9a516a184ff819cd8ee5c60bc1faf141b2b7ad6e1f94e710818"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.0/fservice-darwin-x64.tar.gz"
        sha256 "1706e917a49454350ae8ab3166383e6450971c068c2b6269f1355b59487015f9"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.12.0/frun-linux-arm64.tar.gz"
      sha256 "548abcec7295763e2a9b24e7e0c092b0c1255aca3bba18bf1ae6de2b6c16acb2"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.0/fbin-linux-arm64.tar.gz"
        sha256 "984b656042b9f465f46b331f2aa0d6ebe7b306fbdfb578bd8df6275d225cc8c7"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.0/fservice-linux-arm64.tar.gz"
        sha256 "8f30848be8bf76de0f2181ced766addf61049f3358adf100978f832af0500185"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.12.0/frun-linux-x64.tar.gz"
      sha256 "270193b58ee0dc9d7be5de51cef6e58291837e2ae2aa04046b8b6df2ba4215d3"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.0/fbin-linux-x64.tar.gz"
        sha256 "b87ae6515bea956293023f144e4773ad2b0ed9cf2e3d7f4ebe248a584eca89a2"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.0/fservice-linux-x64.tar.gz"
        sha256 "a660ca737436a0f3ac72857c45185f181d33318cdcd3276444b488e29a5ae520"
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
