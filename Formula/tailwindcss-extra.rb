class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.2/tailwindcss-extra-2.9.2.arm64_tahoe.bottle.tar.gz"
  sha256 "e9450b8770c8314fbeaef1994efeacf69e5a9a239328bdddac360e76c7bfe564"
  version "2.9.2"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "e9450b8770c8314fbeaef1994efeacf69e5a9a239328bdddac360e76c7bfe564"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7bbc7bbddd8fd9d111021cfaf1a8369c123fdfce082457692876a070a44ffa89"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "840b24ae8d1373c98e591093acc2af4def7154dca672852aaee6fe314a268b4b"
    sha256 cellar: :any_skip_relocation, sonoma:        "a79cd494272763eae19ca7f843a635348fb7ed9235800c1569f3095954939157"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "805c80959918f857e177fae2cfa84eab1fa69e5daa1cd801f695419cf8c123d3"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "306adb92b08324cafa26715db8811ee9a077dd78c4efff0c0292db8b7c7a2517"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
