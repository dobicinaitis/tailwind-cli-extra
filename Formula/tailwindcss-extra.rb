class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.1/tailwindcss-extra-2.9.1.arm64_tahoe.bottle.tar.gz"
  sha256 "4a41d75fced5e66318b02e0f9525289e4584ed80f8661ae49148ad80e2ddb0cd"
  version "2.9.1"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "4a41d75fced5e66318b02e0f9525289e4584ed80f8661ae49148ad80e2ddb0cd"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "aed1f2aea09c170da451b68fc23542ff2fd6349634c1c8974323d96643792b04"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "8421e9621cd8939a7b109e69fd7796a76a00d98f0855e9309863f7e581ef4cff"
    sha256 cellar: :any_skip_relocation, sonoma:        "36e3adb823bb8e8598b875e0b271382099ecbe7571878234fd44aeee8bc1d88f"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "90565517f4ae6ac1636334a28986d0962fd3ff1285fb728ce7609a7813c0e96b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "eea8789a3ffe8974df015735c0496b4bf2fb1aedf9afb642a8e2096cc4b68610"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
