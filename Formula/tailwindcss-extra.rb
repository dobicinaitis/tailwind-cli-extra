class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.31/tailwindcss-extra-2.10.31.arm64_tahoe.bottle.tar.gz"
  sha256 "377e1e67460e058917da4d858ba386d9cdc0c2aadb81ced1015f9d090935c53d"
  version "2.10.31"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.31"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "377e1e67460e058917da4d858ba386d9cdc0c2aadb81ced1015f9d090935c53d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "258b6baa134fad927b4093addcb02cb861d054e599406b50cd73b05bc6fb6579"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d1b22cfce933204d0455e1b48291c7f1f124cc50f390c17ec52f742c1714c32a"
    sha256 cellar: :any_skip_relocation, sonoma:        "d282eb26d1c652ed5bff546ea4610a000a1fa054dd40d4b6083b831f089f43ef"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "6ff68f84d339a0e0358aaa68ebf1d0cd97f6861b5c7641bec04ff46e5f124e20"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "70298f1f2bd90734afadfcf4a6be06a1ecbc786fe9fd565bae04e7e7a4d28c4b"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
