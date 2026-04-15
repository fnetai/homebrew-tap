class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.4.5/frun-darwin-arm64.tar.gz"
      sha256 "db814ee4e72f8854a6982135f827c27896086c938154364628d13f473553b21f"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fbin-darwin-arm64.tar.gz"
        sha256 "7d4a74b3c80db73d7970baee94372c154f559e7c5aa93de1b4e7e06cdbaa3483"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fservice-darwin-arm64.tar.gz"
        sha256 "93c19cf8c1a0bb630ba3f4f86cbbedc60b0352477219a3d8e45dfd5facc82269"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.4.5/frun-darwin-x64.tar.gz"
      sha256 "bdc8f1acd8b0e34d4651077a282efd1d4fc1b8d30423f8e14a278c8ad5c0b51e"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fbin-darwin-x64.tar.gz"
        sha256 "8741767ca71f12794a347fae1cd3d4ab922c305fb0df969ded5d0e5a28339266"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fservice-darwin-x64.tar.gz"
        sha256 "001a82b2f2d353eea3ec6a09d275989ab06c7e0699e26874adf5e6e9627ad9c6"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.4.5/frun-linux-arm64.tar.gz"
      sha256 "760365228ce9bf8b90fd6ee979723b46288e61def87cbf166c445467b0482c50"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fbin-linux-arm64.tar.gz"
        sha256 "92bc8d06588538fae39680c3c1b605df2a86389fef651f615edfb5270d87477e"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fservice-linux-arm64.tar.gz"
        sha256 "2411e60a811e28eeca0cfcc85146399d42a02dfc75013244f276abaf6b8f7560"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.4.5/frun-linux-x64.tar.gz"
      sha256 "f33325e6a15af3f350db930998d8596c04053c6419e72752025b59359f4d5ded"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fbin-linux-x64.tar.gz"
        sha256 "7a0e13ec9755c23979e743726b9257e94d642acf257644e599bf9ea403fb1363"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fservice-linux-x64.tar.gz"
        sha256 "7910aa42defbfde06cbce00d944255c683125d47534282f562663a7c5bf79476"
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
