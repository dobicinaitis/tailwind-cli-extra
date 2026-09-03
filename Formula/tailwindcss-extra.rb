class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.20/tailwindcss-extra-2.10.20.arm64_tahoe.bottle.tar.gz"
  sha256 "35c31e00872a631221bccf7f147b210e83e27c4e667ba5891169c62c3f16206b"
  version "2.10.20"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.20"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "35c31e00872a631221bccf7f147b210e83e27c4e667ba5891169c62c3f16206b"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "b8ef453b995cc6c2a5850db855b248375374a4f2520d15e79c8de01895d39def"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "82183655eebc6b81c95fc6e4e4b0cfe8557d2fd4d14341860c363a43d04db8f7"
    sha256 cellar: :any_skip_relocation, sonoma:        "2e5a15917f9f5c6c6c999e259cc4778ff0ffaad31e2cee05f805bb4ab03a9eea"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "6d2958436936b34e0cbfcdf531bba300ac12220b0720bb72b924c3ba61ada6e8"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e688aa4f7551d7a9680dc15d67a8e059edca589e3812726dc6fc12c34e164f97"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
