class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.8/tailwindcss-extra-2.9.8.arm64_tahoe.bottle.tar.gz"
  sha256 "67984d70f6b5b8cd8b8a0c1240acfe306a4609b0a726aee6aa9824e7a05223d5"
  version "2.9.8"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.8"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "67984d70f6b5b8cd8b8a0c1240acfe306a4609b0a726aee6aa9824e7a05223d5"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2134172e5f1800f6be12a8bd0a263831ebaa70895a2f52e402ec81495f289932"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d1da74dcdb73da1d97458f0b6a01a29895d72a24ee9be8968ddf625c713ce4e2"
    sha256 cellar: :any_skip_relocation, sonoma:        "7584685cd7b30ad0911203af1be1352b01a59df663337e37c9fe29ca8e750c5e"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "8581040dd91ff479901c81f02c5dac58016f536b3be03753bad4499d36ad721a"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "928fbb9fabbee617df220c7cbbf0bfaad7376e56315b37d1c78f3e3e91ac9a6f"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
