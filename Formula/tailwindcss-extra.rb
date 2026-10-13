class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.34/tailwindcss-extra-2.10.34.arm64_tahoe.bottle.tar.gz"
  sha256 "f403e638525ca091a81c8c32fdd487b8011ead590797e60c647068f878c0a952"
  version "2.10.34"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.34"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "f403e638525ca091a81c8c32fdd487b8011ead590797e60c647068f878c0a952"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6f54de6523b0b5182db69cc6a65e4a4011e3d1e590aab491af6e15b1b88a8ca6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "45c1d54ebf173e471dd1cd670a127d25c3c8cdcd193f62c9b84256d4ad10892f"
    sha256 cellar: :any_skip_relocation, sonoma:        "b9d8979403c2ce74659263922c2a4c9b3423797df38eee01ae934f3d263acacf"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "614ba6cd0b2aa0c1e0c40efced9fa981445fd101b770375486e80baa51c871f0"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "71e8a6d1865b00edd9dba3b0c98a0e57de225fd6a9297ed55fdc5c70fc476e90"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
