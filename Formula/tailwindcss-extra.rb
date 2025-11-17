class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.6.4/tailwindcss-extra-2.6.4.arm64_tahoe.bottle.tar.gz"
  sha256 "2dca36e9c03c2deec1c20ed01c27c4f44326b65791cd136d4641edb9e1b29f8d"
  version "2.6.4"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.6.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "2dca36e9c03c2deec1c20ed01c27c4f44326b65791cd136d4641edb9e1b29f8d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "13c49a03671e9a50105c688e49e0fb49ac4e0f62d619d4271941e956639a86a7"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "c4b035cd22fc72c8f5a741e1c976b050231fc6964879d338323cf155a509aa4f"
    sha256 cellar: :any_skip_relocation, sonoma:        "bdab1de150bab159f639761a3eeae587e12705e81c332f195077fe948017646b"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "29915ca6f3ec4acabebbb3529c2977660aca83228f1cf152691f30fc6cf60829"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "3ab35f23e21c665f12c98df86f191040862dd1626a4d5e4b3aa7c74a8c32fc85"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
