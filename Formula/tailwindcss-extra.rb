class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.11/tailwindcss-extra-2.10.11.arm64_tahoe.bottle.tar.gz"
  sha256 "f568c1447964e6f3a87aacadca0fd99d130852fb4b46b9f6182c86b27cc8e0c2"
  version "2.10.11"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.11"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "f568c1447964e6f3a87aacadca0fd99d130852fb4b46b9f6182c86b27cc8e0c2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "66a2450a08b31521508824518163c658231ef6b7f593a60e74553fa861327fe6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d1c06680fec9c15dc4fa9df11c54bff62fbec838bbae4a7d1d20c3ced3f35a73"
    sha256 cellar: :any_skip_relocation, sonoma:        "f999534aa5c3e16e955a36e99abd906baf4b1689de68ef84c71f466c95750128"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "109affdf627bfed27a347986f3309b83c13b29b95225f8beb913ee7a28639a44"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9805255e654cc53ecf87ec076cd2a7cfddf5d3fbcc59d21bbdf9e9dc40249458"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
