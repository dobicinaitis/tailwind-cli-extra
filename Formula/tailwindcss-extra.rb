class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.10/tailwindcss-extra-2.10.10.arm64_tahoe.bottle.tar.gz"
  sha256 "e289b32af3d1d6a2c21bbfecaf62a4ff93c8efff1ea017e642c5261b12bac580"
  version "2.10.10"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.10"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "e289b32af3d1d6a2c21bbfecaf62a4ff93c8efff1ea017e642c5261b12bac580"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ee716068925fc6082a1871ccc43335de0c1eb18b81b0f9efabd370ab637a5f56"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "2b598b65c6887ad6909a1b669a0647f5c1da3dd10b3503ef0a2083459435da25"
    sha256 cellar: :any_skip_relocation, sonoma:        "9304a6cd20562239bb2f4fda52d9d6046a4c3d3e1b12860a0eaec20c1ec510e3"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "463011a4b03f3bf0a63886b1f78f7614b5fae4804cdc3d8401a333253f9b5523"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "39512ee53b329660f8a441438301ffea431f2d1bf6372a76ad856512bcfe99d6"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
