class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.24/tailwindcss-extra-2.10.24.arm64_tahoe.bottle.tar.gz"
  sha256 "80dbb640df75ed7a7584d2c31361651f6afa84edaf2bf030401919719f538fa9"
  version "2.10.24"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.24"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "80dbb640df75ed7a7584d2c31361651f6afa84edaf2bf030401919719f538fa9"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "17a1fa9938028e8bc20a1d05b029e54878e3d087c7dae9c72eb6e41373a42b0f"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "8dfae6ad6191dab94706cd7630c9f1db2aefe285b9142654dd29c427b8387924"
    sha256 cellar: :any_skip_relocation, sonoma:        "0e63d24bb316cbbc1c5f2521d32eb8ff72996ab0fe24c237d1ed958d237fa006"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "8093b2ebff8c476c395e8e04fbf33faa130dfd34901f31b8ed644c6593b32155"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "da9d1ee3a6f84707a4d52a7268da2e992dc4d4bf0f514b2fc7b25ca56f1bbdea"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
