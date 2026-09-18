class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.28/tailwindcss-extra-2.10.28.arm64_tahoe.bottle.tar.gz"
  sha256 "f1676422c3ace867b39e9b1e0a774bef6e365ba261a1bf6862f0fe7a307fdc13"
  version "2.10.28"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.28"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "f1676422c3ace867b39e9b1e0a774bef6e365ba261a1bf6862f0fe7a307fdc13"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "94566818f151f2d99f25c05566def2ee8c19e7b9aa5274c3797ac3a009052fb2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "1f97352afc6595c41244853cc2eeba73976d235f6da1daa4b0606939130aa626"
    sha256 cellar: :any_skip_relocation, sonoma:        "38518ea04ea8d3d46cac59b6c6638d9c0f08a04507b7683bbd104335e0a8e2fc"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "36decd85a774dd1a9649d970d8674a7b0fb75218876c8a68b50a8d24bfe893a9"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ae4a75c91a981e83551d22fe2885b815017e7875849b70f4fba1c31b7b23c534"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
