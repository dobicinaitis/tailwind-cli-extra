class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.33/tailwindcss-extra-2.10.33.arm64_tahoe.bottle.tar.gz"
  sha256 "834406f8bb8f239630b7e719a38015ddab73c51faf814e6b8b1a4ce3783fb7d1"
  version "2.10.33"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.33"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "834406f8bb8f239630b7e719a38015ddab73c51faf814e6b8b1a4ce3783fb7d1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "544538dc6b5729bcdaf30ccba9f3a2946cfc614c7e725a3c14578eebc4c5120a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "bb9e93bc22c9002d9819c86a5fb66ce4a502abd84425769e9acd16420f3b1ff1"
    sha256 cellar: :any_skip_relocation, sonoma:        "7b1a4925bacdc1a78d7264517a7f2f7baac98ef0d1e470087178f83c420f63c4"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "916361f80baa5d91708b1bd5d9cd83f2b775626033aa89a22b2a62f9ee81decc"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a8c5e4195e74e98bc76f5914b951f311b7a0a935630e9fdfe309ab328da84446"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
