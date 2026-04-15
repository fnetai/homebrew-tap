class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.12.1/frun-darwin-arm64.tar.gz"
      sha256 "b54da5fd6e7a048dd5eaa073ba09af39337bd12cb1a70252efeaff153a01b07a"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fbin-darwin-arm64.tar.gz"
        sha256 "3d8e56c459d4a27f087664d8c2d21e23f8b146a4ed2582072eed3984e0970356"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fservice-darwin-arm64.tar.gz"
        sha256 "05e41f283dec5cff4fcdc9eaf53471f2fe25ce0f01f5a984b97f0cacf5c43314"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.12.1/frun-darwin-x64.tar.gz"
      sha256 "02ea051c4e4a91f60d07c0deb4f91ac90139c2b05f29589704a717d10adce274"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fbin-darwin-x64.tar.gz"
        sha256 "a7e89c62da9eccf75ff6ede86552a0a35f9c1ca38103c9bc8a39ac93ee414072"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fservice-darwin-x64.tar.gz"
        sha256 "248ddb8053dc30c7920e1ab098b27884e8572f0dbe095d3d6adadcefa6d16304"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.12.1/frun-linux-arm64.tar.gz"
      sha256 "e593047dff8a01a7c2399b07ccb710cb9289ab91cb3165b96908501ae0ef15c7"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fbin-linux-arm64.tar.gz"
        sha256 "384c3e52cd27c4bc91b1d1d73e6c1cb0868045d536dd02b4bbcf9083236b2675"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fservice-linux-arm64.tar.gz"
        sha256 "f380a7d7ea1e2511581a8d00143767dd2920b999414f453bd1e663a51b83da2f"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.12.1/frun-linux-x64.tar.gz"
      sha256 "6f01dee4b2429eb13b1a1355c1e8196c83f5972d8242bbb380c0d4bf9bbc8a53"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fbin-linux-x64.tar.gz"
        sha256 "b05ed4c197ad02ae2f067811b7143daa061e1ac47e7c96791f2a7aaef43cf718"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.12.1/fservice-linux-x64.tar.gz"
        sha256 "f9b9fb2dc61f1e45dfa0030edd203529c96eaf65c8f9609afc2adbcdef5517ca"
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
