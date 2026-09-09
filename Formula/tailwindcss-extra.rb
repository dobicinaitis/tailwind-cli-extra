class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.21/tailwindcss-extra-2.10.21.arm64_tahoe.bottle.tar.gz"
  sha256 "0e0ed22e4b141416f4f83a399ba36493da187f6dcefa48429ffaf228112235b7"
  version "2.10.21"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.21"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "0e0ed22e4b141416f4f83a399ba36493da187f6dcefa48429ffaf228112235b7"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1d56719550e62c4a49aac470448121e3597d776d7bedcd210a6d148ba6c5642c"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "3f6c4a4d9181011cf67762a64bb5f7a8cda334d109f102eca9cd345338549a22"
    sha256 cellar: :any_skip_relocation, sonoma:        "5f61211457389ef9c9846c04e75b5e55720b405bba3f199bc5046f4a4b2322a4"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "fc974501fb768e423a4849ae03158a105a7f076f52428e7f57bdae2e62da1495"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "39b5a4834d6f9039bb37d7ee268006fcab0f51e9470770563a526e8530dd845f"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
