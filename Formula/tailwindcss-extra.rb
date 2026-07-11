class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.5/tailwindcss-extra-2.9.5.arm64_tahoe.bottle.tar.gz"
  sha256 "93c4f12560c060d24d2629144c20d1bca9a1843dbd6e4222e748d54752972245"
  version "2.9.5"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "93c4f12560c060d24d2629144c20d1bca9a1843dbd6e4222e748d54752972245"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "63b4526a7c4c54c6d0e57da5740bebb99323f196357295fa18f34680fadc09b7"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "72a01558a1f45a95ea371ddfb8d16d2edbd7028b8b64e0229903e86ca927eb42"
    sha256 cellar: :any_skip_relocation, sonoma:        "ae374c90135c7a0d0a33ad2120b2ccf37e774f8bd616a88e8e4adc143a476830"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "5bc67f20c3492c7c49f9834d1265f3ff6edcdcf7a3760f62acacfcb7a2e25c69"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "349e4a752385f03d5a4721f0c8362878b57ffca7ca051f49ce571a12b6bc0204"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
