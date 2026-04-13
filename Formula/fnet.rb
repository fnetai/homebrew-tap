class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.7.0/frun-darwin-arm64.tar.gz"
      sha256 "d542ec747578a11e86474606e1a0dc14ef729d2833cd9850d7f65a174de3bcde"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.7.0/fbin-darwin-arm64.tar.gz"
        sha256 "972f24f6d4a2bc4d8eda47d895f0b456a522cbf4d9e360ac34b4a87690cc81a8"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.7.0/fservice-darwin-arm64.tar.gz"
        sha256 "d2d7f70f5a8e59421111bcaa60a96a5935c45a89b70caa1c926ccf717db80eb6"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.7.0/frun-darwin-x64.tar.gz"
      sha256 "14bcd733a472a72662a5d8eca7875e1a086e73ad0a494de9d7fb298e81212503"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.7.0/fbin-darwin-x64.tar.gz"
        sha256 "6d70ce3f55c5e544642d03f6c5e0f32b063ad96aa12278b11e7831f1cec82157"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.7.0/fservice-darwin-x64.tar.gz"
        sha256 "34c81956cfff8478a6ce23fbe517ae83aab15bd78f83b11efa60c072ab6130ad"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.7.0/frun-linux-arm64.tar.gz"
      sha256 "bd9d33028a2938f3dafbc9bed447cf6aae91d30ba98ee9a8f924627d844724cc"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.7.0/fbin-linux-arm64.tar.gz"
        sha256 "8b83ec480fe954bf0d9ba8ba68272f02438c56c618040723f413207b1a56e46c"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.7.0/fservice-linux-arm64.tar.gz"
        sha256 "77164668b5120399d7f93a7daa03e45591b5294974275b6f42796f8b60d04dfd"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.7.0/frun-linux-x64.tar.gz"
      sha256 "d4f71bac34c5f961284bb6b4ef064e862151aecb17bed58ebd6dd23c560f8413"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.7.0/fbin-linux-x64.tar.gz"
        sha256 "a9bad91ad85a1ca31e69a2a3d69c9a6e310f0e4b9ea7a1b06e1d9432ed66b509"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.7.0/fservice-linux-x64.tar.gz"
        sha256 "550487763ed847503bffd99d9bdd0605f6a2fd10016917bade695bab5446dae8"
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
