class Fnet < Formula
  desc "Flownet CLI - development framework that separates Core from Layers"
  homepage "https://github.com/fnetai/cli"
  version "1.17.1"
  license "MIT"

  resource "templates" do
    url "https://github.com/fnetai/cli/releases/download/v1.17.1/fnet-templates.tar.gz"
    sha256 "15f545a8401887ca96e2c09531adbf1269a12e1d43f358101a159fa385a49cc8"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.17.1/frun-darwin-arm64.tar.gz"
      sha256 "4df23351cca5c5930103f52c92c9a20bbce6cf7204c2beb0fdfff4d36aac4cea"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fbin-darwin-arm64.tar.gz"
        sha256 "827a714ae2d0a610a17ba4c6a3c4149b2bf862491560111b24be9d73c41b0bd2"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fservice-darwin-arm64.tar.gz"
        sha256 "c1f8010ae5a499494234b6fa12b7e95da72438a8b239cc1185ed7a1ece3c528d"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fnode-darwin-arm64.tar.gz"
        sha256 "60c6dfa2463bc7389d13f2286db0cc81272fb38b953110e1723a96a6fc2332d2"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fnet-darwin-arm64.tar.gz"
        sha256 "e605d2acae37a9dc94d10d62ded4c52e92df3466d22d6c9b135f1df70675a619"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.17.1/frun-darwin-x64.tar.gz"
      sha256 "45019735d35dfbb181c515cd66a9e9d7d1c2412ad5f9bdc596216e7607fb3916"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fbin-darwin-x64.tar.gz"
        sha256 "2717bd465161a9dd7784580c77f702ffc33afcba736a4ce6e4673da061266fc1"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fservice-darwin-x64.tar.gz"
        sha256 "109bd87d21204b021592b2dcfad3b6464e5ee20d87e92956823e621fff8aa4db"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fnode-darwin-x64.tar.gz"
        sha256 "050169e0ba62ec7008f013167a3d8c3ae7e34c8ed33b940412892eaa849851aa"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fnet-darwin-x64.tar.gz"
        sha256 "cb7b3877901e202020d7786fce436b2cf087a7f42e30fc0117b44f0cb44a9a4e"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fnetai/cli/releases/download/v1.17.1/frun-linux-arm64.tar.gz"
      sha256 "a7c52be4618aa6ba2327e9bf8d70f6a3fbc64fff46874b9cdbcfa5768f9fe91c"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fbin-linux-arm64.tar.gz"
        sha256 "4f9a0ace692a5ad09bffdb28d8eb76b4425147989bc78e6ce0164afd7f8991c2"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fservice-linux-arm64.tar.gz"
        sha256 "89635c4ea4fcdc822d51323a6896c53c281556886547ec64ef99900fb2a9705b"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fnode-linux-arm64.tar.gz"
        sha256 "24b7a134580a14dbbd1cdc973b5085d89339a778a773580ac22c6985a654171d"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fnet-linux-arm64.tar.gz"
        sha256 "26e0fe285df9c6e5772e946b6dbd2ad95ecdda528d948a60150f25a996d1b0fe"
      end
    else
      url "https://github.com/fnetai/cli/releases/download/v1.17.1/frun-linux-x64.tar.gz"
      sha256 "226277fa074e6d0f281df38b2084981f04a55a1b865906fa3f3161373158fd91"

      resource "fbin" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fbin-linux-x64.tar.gz"
        sha256 "c58742374ab26664ff3f6e9c6c9fcaf7a6e519c5f72fa2f64f2551071c20734f"
      end

      resource "fservice" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fservice-linux-x64.tar.gz"
        sha256 "4ad82506ca839106917d29b89a2d37fd32dda4d1e156db4aa22933f7539294a3"
      end

      resource "fnode" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fnode-linux-x64.tar.gz"
        sha256 "08eac0949b195ff842c60cc101072acb73e0fe5ce835b9a3c96a8304d42276dc"
      end

      resource "fnet-cli" do
        url "https://github.com/fnetai/cli/releases/download/v1.17.1/fnet-linux-x64.tar.gz"
        sha256 "594402fb2ba2be09985e0ae3fb42f4649ac2c0e405910e6fdac6cdcf7ef63c4c"
      end
    end
  end

  def install
    bin.install "frun"

    %w[fbin fservice fnode].each do |cli|
      resource(cli).stage { bin.install cli }
    end

    resource("fnet-cli").stage { bin.install "fnet" }

    resource("templates").stage do
      (share/"fnet/template").install Dir["*"]
    end
  end


  test do
    %w[frun fbin fservice fnode fnet].each do |cli|
      assert_match version.to_s, shell_output("#{bin}/#{cli} --version")
    end
  end
end
