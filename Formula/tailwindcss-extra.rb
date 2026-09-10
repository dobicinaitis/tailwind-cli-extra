class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.22/tailwindcss-extra-2.10.22.arm64_tahoe.bottle.tar.gz"
  sha256 "e408b0a571df42a645649b7f5223fc04845abc186abfc036d5aa9d19973d36c4"
  version "2.10.22"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.22"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "e408b0a571df42a645649b7f5223fc04845abc186abfc036d5aa9d19973d36c4"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7d07e2bcd94f94cd68b534a978a2b3e02123570b6bfeab7e69dd7765c67a7d6d"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "5a40fb9dbb193edcef011285998bd7eab2c6ab6fb3318bb2184364cd4568b66f"
    sha256 cellar: :any_skip_relocation, sonoma:        "4b56c425c5fdb1386be5c8757cd06b97c9528a8e33bb215825fd8e337231ec28"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "8c2be3704a35436431bf4434e741b4585fd6be92f44bc1c78e819d59684dfcc7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0fc08e50253e52b91b35bc12cefa1a0c9da72f88add58036ca6196b18b5da31e"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
