class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.16/tailwindcss-extra-2.10.16.arm64_tahoe.bottle.tar.gz"
  sha256 "79d3b84d1825f0352f430e63f16b232cee25b3f2a680cf6d75b41d006c0e4c3f"
  version "2.10.16"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.16"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "79d3b84d1825f0352f430e63f16b232cee25b3f2a680cf6d75b41d006c0e4c3f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "705d5b9ce4d77b5e7042469b9678906c8615e5c8cafb4948b3ffaa64b0ad875a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "746b536e0ca4e1ba70925696da82bea97726137549053f5f8d56a9b280d03139"
    sha256 cellar: :any_skip_relocation, sonoma:        "879d719488b642760cce3267d260af1e3156c86322df47f75ce362d33a828106"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "0173acd7b00a0e0736530e579c114bff4a12016edd90c9c52487f6e4a84b2201"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "432f37cdf0216b3d514e2f087533397637ef893c1e3413bb009477af80d52dcd"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
