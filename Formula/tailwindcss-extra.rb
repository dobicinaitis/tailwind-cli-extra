class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.2/tailwindcss-extra-2.10.2.arm64_tahoe.bottle.tar.gz"
  sha256 "ba118a6793ea753df3ea559f10a113394136814e615e1c91bd434da66f52dd45"
  version "2.10.2"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "ba118a6793ea753df3ea559f10a113394136814e615e1c91bd434da66f52dd45"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "230887a4c782108382823aef62708a9191bddb6cfc648245be63ab46c6eb8494"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "4550fb814c9a9b087b66beee4ba252878977955488813659d6ed53f70b794bec"
    sha256 cellar: :any_skip_relocation, sonoma:        "cfcf608364988db7fb57d14ca831780b06e08190585c38a3eda7943d35599d56"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "81799264b10fde2294fca1c7bd7e169b41d1a9323e5b8f46555a0fedc36c8677"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "faa6f6e140507e93f545badf46881e89c45dea05335f957bc341d350fb39dd46"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
