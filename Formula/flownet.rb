class Flownet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.4.2/frun-darwin-arm64.tar.gz"
      sha256 "27cec9fe64123fe9c94d39028e03b98c86c0e5209d5b46f75de6677622b16524"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.2/fbin-darwin-arm64.tar.gz"
        sha256 "bc7052e522d0ddbd4365e3440ffb0c0e1af21c158ea56cc1c03363356bcdb659"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.2/fservice-darwin-arm64.tar.gz"
        sha256 "fb71351423003e2c1785f0922a905a3ff063c087376f5c0feb56878d896f3d59"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.4.2/frun-darwin-x64.tar.gz"
      sha256 "59df4b606c4c50915854b37f1badc21873d1cd50ad17b627492ab30ac90e3295"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.2/fbin-darwin-x64.tar.gz"
        sha256 "a688f80c97e2d13e15b5483933ea405f09a356cd9f4f6c4980015c52fbd58f5e"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.2/fservice-darwin-x64.tar.gz"
        sha256 "6261cb03635b6c46f7cd501a3a6882e8cd616e1fe31aba3139513cf7a137976d"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.4.2/frun-linux-arm64.tar.gz"
      sha256 "154a26a5b6ff7b5d64968ec231dcb37ee95a8b3dc028be6a7c0c498d3f20c338"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.2/fbin-linux-arm64.tar.gz"
        sha256 "68068bfa6635e8115d5669d4930d463e2d3a5a50fe1d9ba76a3d7da2206c7c56"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.2/fservice-linux-arm64.tar.gz"
        sha256 "21d1ec4e4f2bf068eafa039e4d04a6c6e026641adef54c5129682d1d6bb063e6"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.4.2/frun-linux-x64.tar.gz"
      sha256 "c1c33d1f4f21c66c189e8d9c88917fa8ed003883676889140a222b62a1199cf4"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.2/fbin-linux-x64.tar.gz"
        sha256 "c68de9b410dc223581f72490e2392b43a5ab866244d98fce9cd6de1ccf606d4e"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.2/fservice-linux-x64.tar.gz"
        sha256 "e454d06a3978a841862ba929368adb25eb78244494e26d5fbd6548380e99593e"
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
