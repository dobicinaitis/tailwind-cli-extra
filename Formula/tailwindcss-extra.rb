class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.15/tailwindcss-extra-2.10.15.arm64_tahoe.bottle.tar.gz"
  sha256 "3d86f94d5a3c6aef349edaee785c5d4715e5ee52a4fdaa90cfef5f378e965687"
  version "2.10.15"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.15"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "3d86f94d5a3c6aef349edaee785c5d4715e5ee52a4fdaa90cfef5f378e965687"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0cfbb2ec3e698518173b8b33aaa5a045c9f5926a960a049edbbb908eb22f8b35"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "b9d26a36bc77ea75a17cb618494789593d7cbcaf1383ebacbb84940e484595b7"
    sha256 cellar: :any_skip_relocation, sonoma:        "428f713a331311815caf9ab27751145802155c8a14de62d6745a22a13310f9d3"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "ac9552b48e41680251a2689e947a255f2eaddd414c2c45f2aa384a201744b17e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0a178c9972e0b7fd86adbbcb1ca9e052102de67687c88e2b2d1ae23565e63178"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
