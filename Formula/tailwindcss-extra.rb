class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.2/tailwindcss-extra-2.7.2.arm64_tahoe.bottle.tar.gz"
  sha256 "3f237c3cbfad764655f13255622ef45d9cd1a2f077e3dd75be79c5513ba4be38"
  version "2.7.2"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "3f237c3cbfad764655f13255622ef45d9cd1a2f077e3dd75be79c5513ba4be38"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "9adba91a0625c90bda08aa0e414982824f487212cd517575993aa11447bae949"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "3c8dd8202dd197f806c359b606398b8a1f5d44f09606379844f50227adee2921"
    sha256 cellar: :any_skip_relocation, sonoma:        "62b9a29b24761486ed3c4963e3f9875e26a071d56fce4b88a9845545af4885a2"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "0fff7bd974326c46a5f9868c51edd1dc10bd6a45f3faf9264427cd91710c12ae"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "8d650be65fb3c75d17654b192bc461241c79f78fe3513f090d357185c26ee3e8"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
