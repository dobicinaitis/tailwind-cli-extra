class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.3/tailwindcss-extra-2.7.3.arm64_tahoe.bottle.tar.gz"
  sha256 "9815f121871a64522296fdb703ef669177592fb453698966995f16ec4e1206de"
  version "2.7.3"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "9815f121871a64522296fdb703ef669177592fb453698966995f16ec4e1206de"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a88a84dfe5d3387726fcdd7c29e884d678de8b4c2bccbe680492ee5f5ce1f1fc"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d425bf96fb932d195cccac480639ff8ea50dac68737374b5bd42ab86c3f4e2a8"
    sha256 cellar: :any_skip_relocation, sonoma:        "9a219956d12ed70587156ed198e7ad3acd3c50633f62f4ec425417a1a0547a7b"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "1f7bbfbb22a572c0653c22574d3d9802b52f38623e05425fa655677f96e77747"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "1906b9f9e1dfb8fc3af5efa7468d1db43aee48d7cc1c92617e20f205e5966580"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
