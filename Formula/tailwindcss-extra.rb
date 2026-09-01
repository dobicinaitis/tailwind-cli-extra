class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.17/tailwindcss-extra-2.10.17.arm64_tahoe.bottle.tar.gz"
  sha256 "82ff291872009e657481d1b8e8acf15b48fd9302dd77af0c46891acdd5335a14"
  version "2.10.17"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.17"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "82ff291872009e657481d1b8e8acf15b48fd9302dd77af0c46891acdd5335a14"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c78038afed448a788ab3562f4e50cba114705feb3b3ebc44063c3ea6afa2c62a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "16941cf75bb291a4290dd1a24c6246e67a1bafdcf54f79bae542bba8a8577f75"
    sha256 cellar: :any_skip_relocation, sonoma:        "0ff2d482b871647778f8299e2eb5b882882ccc0d00b1affbc26e62091fe44f42"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "f85d0218f837a5426669d8146f68e2b8350e3c2bf42d4153994863b40bd07bf0"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "405a7040ca5c8996ce593953ccbfa4a50eceee18b4eb9617fa9adde611b33a13"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
