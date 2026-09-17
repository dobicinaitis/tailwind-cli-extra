class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.27/tailwindcss-extra-2.10.27.arm64_tahoe.bottle.tar.gz"
  sha256 "c6875dba805acdf15f76fecc189e62927358dbc1179ca705801011d7894ea303"
  version "2.10.27"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.27"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "c6875dba805acdf15f76fecc189e62927358dbc1179ca705801011d7894ea303"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8ba362680149650a18f34ac54ee74f9e64d87fa7951554ceb9496c46364a60b4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "e18d0f7f0b059f16cccb570b6f844362c17d475db16d52b40d722b0679c3699c"
    sha256 cellar: :any_skip_relocation, sonoma:        "2d630b3122b5afb1ef851fffd5abaab27d72fd27a2d6870b41b12032e4b01136"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "c9109933d4e4f25443c79d2c763edcce867d9f4a067b7353afe1a7c827d7e035"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "92a7edd1d60422ddf9c2eb863874f251ecbb5d778176d2e7ab76643c29655eed"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
