class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.8.2/tailwindcss-extra-2.8.2.arm64_tahoe.bottle.tar.gz"
  sha256 "17c1dd62dcfc873f3ed925e69004e5d71e4fce6efe0de673cb8c092a0e34f4b9"
  version "2.8.2"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.8.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "17c1dd62dcfc873f3ed925e69004e5d71e4fce6efe0de673cb8c092a0e34f4b9"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "b612e7d4f55d835948f5e46ba1e88eed565480c2800a68ecf66443113fa72e73"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "57b4069f612a8dbe8ac7ccd16f8d4899c89f9774162b25247840c28808fa9a56"
    sha256 cellar: :any_skip_relocation, sonoma:        "19f6751eafd05d4c7efbe59706f8e8f164d39d1477a64f2e17411fcf6df585c1"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "febd18cb8d3317517ebc4b72b73a975dddb42d1a50d80d72f8c68dff9af0517e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ac8f6f46e9d18ddb4f5d97f0221122ca493f986ee854d0c26f7de2b8ced99c10"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
