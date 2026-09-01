class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.18/tailwindcss-extra-2.10.18.arm64_tahoe.bottle.tar.gz"
  sha256 "b490e96b02222ad4502e8bbaecb6eb9d345810d0bf2745bf7a84824f81724e70"
  version "2.10.18"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.18"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "b490e96b02222ad4502e8bbaecb6eb9d345810d0bf2745bf7a84824f81724e70"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d7166486d518100ff29262b72c49f81083be6201c278131018813c5bfa6516a2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "40ab4e139ecffe57705a360c28328f599ddfc7a20a6cdeaf6c0e19ef7f30c20d"
    sha256 cellar: :any_skip_relocation, sonoma:        "97169a22d8bb47b14a9ea9545e984b59eee822001d472d11bffa8c81baf13964"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "45c338edec512fadcc20d30f7b0d7c8251c95b4bb7145f29a6fb73e0785705c7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "188e48cbed7e4460203dc57eaee72dc29420da4135f4a72fe3a1ef086b82d2a8"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
