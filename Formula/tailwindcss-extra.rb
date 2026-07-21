class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.0/tailwindcss-extra-2.10.0.arm64_tahoe.bottle.tar.gz"
  sha256 "a8b9ce5d08e1e76ab047b8606412052381be6cc9b296f698fd2fd3c8b35cae0f"
  version "2.10.0"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "a8b9ce5d08e1e76ab047b8606412052381be6cc9b296f698fd2fd3c8b35cae0f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c792e56df0ecc46372f15af6b3b77866729fada8c74be9236c0db0416477d25c"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "9bcb130b46cd1393ca3a2907d0eb85e512a514cbf48586fdaddbb35427fa0af9"
    sha256 cellar: :any_skip_relocation, sonoma:        "e400fa49a03b7e62fe09a43c20231ab04cdd4664a501629dd4c675bd1eef4ba5"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "52faafbd10d93e5b85f9ae2312519e6481e27cc488d92e231d3e3877f66326ae"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "374868cc9b5028a87f9533bfdc70944934cb4feb1b151cae6182686828f67a17"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
