class Fnet < Formula
  desc "Flownet CLI tools - shell workflow orchestration, binary management, and service control"
  homepage "https://github.com/fnetai/cli"
  version "1.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.4.5/frun-darwin-arm64.tar.gz"
      sha256 "b9e8508c211007462058dc73e5bf8bd15b47591206dccfb0a557ed99e64ed363"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fbin-darwin-arm64.tar.gz"
        sha256 "07f60205985d2a5bad57e7860a14355a7878893f506de43b429226a0b20e8ae6"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fservice-darwin-arm64.tar.gz"
        sha256 "1dcbc4e3a18360987e2991872b70e289c2c5a1057f80ba6e4608dfc98f8a7bb8"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.4.5/frun-darwin-x64.tar.gz"
      sha256 "b54ac1cdbff50ae0e647c0bd844053bb270cd2dfa192aa8a6b660b449bbe6f48"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fbin-darwin-x64.tar.gz"
        sha256 "38aa81fb5aabf9f9424f0677478ea825b75b46719bceaebeb19616481b221d43"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fservice-darwin-x64.tar.gz"
        sha256 "734e339c62ebfad4cf3344136df271e99b0cb1c3a93e3d4420ecae3edb27e37e"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.4.5/frun-linux-arm64.tar.gz"
      sha256 "067dfffc94b54e809abe6e485d921da2ebdb0e439478d7dfe407c6297d994907"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fbin-linux-arm64.tar.gz"
        sha256 "ae4e97402f64b7a8ee6c81269c00fc5f2ed4aaec3a6549bcd5b6d503e4b1e937"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fservice-linux-arm64.tar.gz"
        sha256 "752aafa4eb09f47f83ea96146f055e3a5f777016e57693bce4d5412914a07960"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.4.5/frun-linux-x64.tar.gz"
      sha256 "bd46cece94a252dbd46f151d39c747daacd8a6c11dc274045b58daa8b91cfd13"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fbin-linux-x64.tar.gz"
        sha256 "4a5ed2bb89567b13afd2f2c8e29cb1e773b08238ed51c0fb8980e2e7a480fa95"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.4.5/fservice-linux-x64.tar.gz"
        sha256 "783673265aaf54a8fdc18f15ee642be04b191069283787aaad99f17f024ba88c"
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
