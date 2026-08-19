class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.12/tailwindcss-extra-2.10.12.arm64_tahoe.bottle.tar.gz"
  sha256 "addb469bf7a3cb9821848f103a22f0d24edff66af428d3a7888180990b571855"
  version "2.10.12"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.12"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "addb469bf7a3cb9821848f103a22f0d24edff66af428d3a7888180990b571855"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f1a8bde1bdd3e7affe37507439256e5b2cd5168082c756ae7b31f2fbf2f89ee3"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "38919eac37fafa45722a49db52f3bc8f481c58bc14f510758840f1e1c75bc740"
    sha256 cellar: :any_skip_relocation, sonoma:        "b1ab9995f6d87f3bda67023bfec023c0d791f7ab6a6c9a7180ebfbdeadd4da3f"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "40e75a67051b3c22f39499e7e2998c8f085ebef78768daaa1d55de43b948c077"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "b77e07a52039af403ac55a9ca25752d2e7a77af56a3b6edd769ef6e954e0b9a7"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
