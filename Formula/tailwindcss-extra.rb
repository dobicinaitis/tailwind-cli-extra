class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.13/tailwindcss-extra-2.10.13.arm64_tahoe.bottle.tar.gz"
  sha256 "ab737492c7364fca34574059f5d026e41ccf3a6533ffec45488945bfa4d2b361"
  version "2.10.13"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.13"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "ab737492c7364fca34574059f5d026e41ccf3a6533ffec45488945bfa4d2b361"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c9bc955c188d6012ab869e0e96a212df808b1d86892652f998a95e30cc9ed937"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "0fbd90fd116ab751c567877b2c8ffd4f84388324e5ea19eefb5ce8f2acca436c"
    sha256 cellar: :any_skip_relocation, sonoma:        "3d560e07d6ed445615a5944a309d3138157eba6d656fcebbc9de6cf1b7ab8487"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "ec349557c2e4bd2b11061e6eb8129799762fc5769f95ca23f161a2998004f55e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "66661e791b1746383d52b4693dde551afb4b3c7d4e8729fb9833ff8ab230daae"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
