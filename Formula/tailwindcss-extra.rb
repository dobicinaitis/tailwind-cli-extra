class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.1/tailwindcss-extra-2.7.1.arm64_tahoe.bottle.tar.gz"
  sha256 "4707c303d1df7dcb8ac5d667ef710e756f75517223385eac4a65bde702d86464"
  version "2.7.1"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "4707c303d1df7dcb8ac5d667ef710e756f75517223385eac4a65bde702d86464"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "269a9bffa174c2f85da64de836fa2ce0be7d4fb0bbde3c5625364f1c052fc883"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "24197abe8098f27ef36e25d651bfe8d030565f468e4b63b5f49de81b28f7db45"
    sha256 cellar: :any_skip_relocation, sonoma:        "c4c0d73dfd42a0657c7676bcfbf1f77562cbde8c5c502dfac065f64fc688a643"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "666fa00f5163f0e783b8a5aeb8c20c7354eeb20966970390b1fa6815970ff68f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "948e363f35bdc7556bd39bd4a474f4bf20e2cfcb6aa89c708093d0ab0833ce3f"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
