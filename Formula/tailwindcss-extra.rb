class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.23/tailwindcss-extra-2.10.23.arm64_tahoe.bottle.tar.gz"
  sha256 "a537945671fa0b087eeb48fc31b63321b0225801eca5e107af8fa7420ffed331"
  version "2.10.23"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.23"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "a537945671fa0b087eeb48fc31b63321b0225801eca5e107af8fa7420ffed331"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8bcd794394fdcf43ecdf775702f1aeff135971c582ad3f7b81daa2d0f6e80f92"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "bf7663706dce9b38b21fba20f6a237df80a05f0d743af7ea26119442026df05e"
    sha256 cellar: :any_skip_relocation, sonoma:        "6bfa0745b2fee3f6b2d180db77dfbbaa69e2bb82bd9a03075bcc8a869468a8e5"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "65b56d2bdbbc090fe875f3045b9a268654cdf61941bf442cd4268f1de5670f14"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "42a585063698115d4aa3aac6af193d1c22a7547c243b1bdbaa8f3f0b88c607f2"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
