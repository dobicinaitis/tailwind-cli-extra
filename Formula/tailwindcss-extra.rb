class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.32/tailwindcss-extra-2.10.32.arm64_tahoe.bottle.tar.gz"
  sha256 "0aebf101d7d1ae4ffb54aa9ec0ed3a95dcb8a47178ee5671fa35992ea0f7523a"
  version "2.10.32"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.32"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "0aebf101d7d1ae4ffb54aa9ec0ed3a95dcb8a47178ee5671fa35992ea0f7523a"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "43d12aa619e8dc6364defcaf8d172941acf622b0b6e5d02c956971f9b4c3a7c3"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "a6c166578ef3ca40e11f19c0465f6a9894422a1d1f59ecab28886ddfa1975c8b"
    sha256 cellar: :any_skip_relocation, sonoma:        "6b695477bb0686781d78de7e5f8673cc9e14f4649b6c874b1c6c71c2cc44298a"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "f5a2f43ac740fcd145f9fbd89d42c793e7bfa682d820a95552866ec189dd1a30"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "74bb3fd8f16605c460c8401ee8876412573520955e47fafcbbc5fa1e31641c0f"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
