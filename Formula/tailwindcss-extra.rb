class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.3/tailwindcss-extra-2.9.3.arm64_tahoe.bottle.tar.gz"
  sha256 "90dc2df86e570d35e1752ee17155ee8d3b14b80253e600a6bb720fe79c36fa4e"
  version "2.9.3"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "90dc2df86e570d35e1752ee17155ee8d3b14b80253e600a6bb720fe79c36fa4e"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d9485e46bdf27ed0f827086a13169eb1455549e2aea478294193680b12adb1dc"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "bc17c50d97c932ac891b8bf0a5a787e85a6abbcc05c062c7fd217ee5b273b777"
    sha256 cellar: :any_skip_relocation, sonoma:        "907af8ef76f6adbfe962ebead6d1b9467b9af0f8d4994f9b4972b765570c4f55"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "17d9b7a52edf493cef254bfb296257e0a550e131373ef8351c6786548093b855"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "828697ef4186ebc0fe15c079826d94c2c64caa17840513cadf93c58e331b3906"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
