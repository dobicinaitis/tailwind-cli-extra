class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.14/tailwindcss-extra-2.10.14.arm64_tahoe.bottle.tar.gz"
  sha256 "7f5e6bc569547689252bc415fc09e944eb18c912691ea7830bda35b4456a934d"
  version "2.10.14"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.14"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "7f5e6bc569547689252bc415fc09e944eb18c912691ea7830bda35b4456a934d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "be8d0ad6a607d4cee2e29e5c222a338765d293dbe443df96b7df2cba14c584df"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "7d33e63c2f07e9e05571f344f9846295fec40f8ab7cf5b327fdf2823a0d4e818"
    sha256 cellar: :any_skip_relocation, sonoma:        "ad1d60ea7ef236babbf2c327817f8ad39c29d6d3784a4b6f61ec52c9a06336d5"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "3ecccd211bf5256bb27735d59b630ca5d969d7fbbc0d240f56aa328d06c137ed"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "1857a2fdc623aec4303e8270f819365b66138ee92b3068ee1283ee75a98b12c0"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
