class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.8/tailwindcss-extra-2.10.8.arm64_tahoe.bottle.tar.gz"
  sha256 "15065ceac2fff8f434486fa5b8c0fd8a0859dd001860df01d5dfcb8ab8acdc27"
  version "2.10.8"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.8"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "15065ceac2fff8f434486fa5b8c0fd8a0859dd001860df01d5dfcb8ab8acdc27"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ee64c33f792b082bff367b1445e69dbda740226764061e957122592fafb77495"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d62e2d313124e8c693eee872f43b3f202b41ca1a2e95bf504bb5de0ec8efdd54"
    sha256 cellar: :any_skip_relocation, sonoma:        "6139dd6d7b5720c3a219241ca31892e7c7d91a4441a16cddfa29e043767496a0"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "8c73715bccf10c30fb91d320df7786ce5a09ca32d0006a9941b6352e09ee908d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "95e8e31337777ab08d87f7ab2222e4288d901fdd0221c5f40fa90a2bb7ee8772"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
