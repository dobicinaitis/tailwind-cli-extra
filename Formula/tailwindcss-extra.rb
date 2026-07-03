class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.0/tailwindcss-extra-2.9.0.arm64_tahoe.bottle.tar.gz"
  sha256 "5028d414bfee68d70e121e67cb0e0bb276d0c359879a69ac137f09d70769f0ed"
  version "2.9.0"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "5028d414bfee68d70e121e67cb0e0bb276d0c359879a69ac137f09d70769f0ed"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "9ce29ebad0bc03aa8d56d29134c55bcfa72d8829f2b6f1374716378a057be4c1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "5c2998191aa7626c7823c68b969b3875e3dbb9590426fcca1d42c9f77ca7382d"
    sha256 cellar: :any_skip_relocation, sonoma:        "00c782fdcc83d1068aaa9f9e9accf4b40571276e3ed46069142e4d5d57d20749"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "cee1499ef80d463d5cb3ee09d394376606667603101287c3549a1c83f1487706"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f95fa1d74d3dec7b9685fc7721cb2d10ff5fd2dbe65d8ef982c71f9b3fb739dc"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
