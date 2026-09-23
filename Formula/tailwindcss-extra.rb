class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.30/tailwindcss-extra-2.10.30.arm64_tahoe.bottle.tar.gz"
  sha256 "723da881f3dc374318630a3332c6491389855c6079a181f00cae4a3b083c186f"
  version "2.10.30"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.30"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "723da881f3dc374318630a3332c6491389855c6079a181f00cae4a3b083c186f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1716a8f77b45fe034bed7601b5b7a8930b596f2b1a6e9121e4234c910eb31301"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d843239b5f2bc727adb9f3bb5b6623adcb38bf08ae1732d80143167a82a2dec2"
    sha256 cellar: :any_skip_relocation, sonoma:        "bb5effa54f3771e8a813e64cfda6dbf66bb8201a3c86d8b532c0afc101a3f5ea"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "1b30371536f9cf6f02e847d145f6644721683726caaeea06cdb1a2ac056b8edf"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "d73aea0d60b7e05d28b23f62b9570dbeaef37dd9e829aa08a9a6bc41855dac92"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
