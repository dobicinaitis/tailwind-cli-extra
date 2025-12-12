class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.4/tailwindcss-extra-2.7.4.arm64_tahoe.bottle.tar.gz"
  sha256 "dc348d7cd155c0443df87c69f0ffb6b65f50a0ca467322ef8bf0ce11e654a2fa"
  version "2.7.4"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "dc348d7cd155c0443df87c69f0ffb6b65f50a0ca467322ef8bf0ce11e654a2fa"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "160ebb9ce454762e23b85b62402b6cf5cedb347a5fca7776d5ae1d004a4ec5f6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "759086d0175c51cfe8a291afb1d3728a69dc0ff2e139949633cc66bda8a6bd05"
    sha256 cellar: :any_skip_relocation, sonoma:        "50446024bc64753b1a3b3e39b65617ac5b0aa107b067e8c04e33d796e221914d"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "365296312123b3516e8e0e16e28ba20c1769df6c9b6a7d784253ca58c28f2b34"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "dff32a6a611650182d1cb34974adbb0b0dfe7a9d55926b3bb5fdbbb2070b5f70"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
