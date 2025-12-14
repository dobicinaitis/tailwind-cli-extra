class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.5/tailwindcss-extra-2.7.5.arm64_tahoe.bottle.tar.gz"
  sha256 "a7063f4fd068dec644820b5ec2236f80a76897154143909ef9e946c413d6880c"
  version "2.7.5"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "a7063f4fd068dec644820b5ec2236f80a76897154143909ef9e946c413d6880c"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a44c31b1a04f8470784ae2de7c6b38eacf6a54280b8db484b34150f9dfc56d64"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "e91f8518bccee57110736ce52fcf9c54335ecd17bad510e7b098e6915523fcc4"
    sha256 cellar: :any_skip_relocation, sonoma:        "a376700bc2125eb8736cb018837cec547af592335653ee451b6957654a38ef2d"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "5376f820d0101963506b124dd72300991d18442b40ef7fbc942af589571baf00"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "545f55cf77bf7fc9c0803fa84d5c8954c9d2178846e1ec40210da7cfa9e8ca4a"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
