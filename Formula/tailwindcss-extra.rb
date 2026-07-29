class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.3/tailwindcss-extra-2.10.3.arm64_tahoe.bottle.tar.gz"
  sha256 "f97986ec56cce7317afe9c139fb678315748f5e1754b05f8058ee9fe958ec911"
  version "2.10.3"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "f97986ec56cce7317afe9c139fb678315748f5e1754b05f8058ee9fe958ec911"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c184fce3e3196576d1224289e659b8115e36ad724d47ab770a5b2a5bcd95e549"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "a6dac61cb926424b8086686cda3973f6d6f3ad2f9065ad49e3281cb3ab04cf03"
    sha256 cellar: :any_skip_relocation, sonoma:        "21c9cf88bf44e8b57cdd88f4d0b536b6583e2cd9d1b707683307301319c36f60"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "87f0d6ca1fa3a3f8de8e782424d50098e5e463f5c578a8f36a2fb02c885d5e1c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "682bac17dc45f2e7663b1fbd46983c45bdea3b8c2588c4fdad600c74a9f84dd8"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
