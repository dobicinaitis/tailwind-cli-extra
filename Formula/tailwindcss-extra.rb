class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.8.1/tailwindcss-extra-2.8.1.arm64_tahoe.bottle.tar.gz"
  sha256 "a9f621ae27fcbce5deb215979cc0181d63a5ea29b22e99ea14eb4d90d803b4a8"
  version "2.8.1"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.8.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "a9f621ae27fcbce5deb215979cc0181d63a5ea29b22e99ea14eb4d90d803b4a8"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7ebf2258199c9e62c2a216e445ba8bd62f6702c3ef206e8e1841881077d6ed49"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "3137f9060cef12fcbeb2f08e829b582abe32e58bb91339b4cdaf069e6e233007"
    sha256 cellar: :any_skip_relocation, sonoma:        "7fdbd47dfe9c792634a41309adb8fd24749ced3cede7d2e28bb7f74c29f4a7b6"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "2ef228b01b6dfd629d273a65b8c4af5938d1b93ea9cf02730a9182861dd5de29"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "4ee2657060cfb30df79e2a99011eb91f8a8e00bc96215b30b4853f45e1aa9f6c"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
