class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.4.6/frun-darwin-arm64.tar.gz"
      sha256 "34f21fed21cb1a72fb6eaf8621e48ce0e2ff6146853e39be2e901bc66f8affaa"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.6/fbin-darwin-arm64.tar.gz"
        sha256 "3d902fe44fceb2bfa9b7e8f13d5b04f72bbaa3c7003394a860fd5e3effa98ce7"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.6/fservice-darwin-arm64.tar.gz"
        sha256 "26e8815fcc832e05dfcac06ff88cd8676b1fdd94c0249a0e28da16291e030e5c"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.4.6/frun-darwin-x64.tar.gz"
      sha256 "33d4e4d0d283e49a8d509913d88965142430122c86b8f935d1a61c4365c3551e"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.6/fbin-darwin-x64.tar.gz"
        sha256 "7489c902cec33362e7084dffd561a3ed7ff3ace1cfa1093c7f2dc0d6260f5a02"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.6/fservice-darwin-x64.tar.gz"
        sha256 "997e117a3ba7211fed89a3583928df68dbbd08ada30d814838fe88f1db42af53"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.4.6/frun-linux-arm64.tar.gz"
      sha256 "a26c61489f2f2bafd0dfd7cab5114e15dcd6e501c52da6aa4ca35ad8893a5c03"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.6/fbin-linux-arm64.tar.gz"
        sha256 "8d2f9faefe9b970d4358bf5944fb72698e08a9d048fe75be03262d755711268f"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.6/fservice-linux-arm64.tar.gz"
        sha256 "64a28acfa4bc917fc7d2ed06ab6e70af5c51274242ab1f4346b6b59f0652fd0a"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.4.6/frun-linux-x64.tar.gz"
      sha256 "647b6121954a738baeda1c023b4ee23cb8ecbd887b32c884cf7bfdbb37e0227a"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.6/fbin-linux-x64.tar.gz"
        sha256 "e24880155f6f9032e3f708bfab02cb7fb70c373d9749f8ed10db00aca5df5af8"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.6/fservice-linux-x64.tar.gz"
        sha256 "3c9dc3b63f7e73759e7321d31ab4b6226f7e06add3f8edaa81e393daf3630bd0"
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
