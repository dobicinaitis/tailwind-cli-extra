class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.6/tailwindcss-extra-2.7.6.arm64_tahoe.bottle.tar.gz"
  sha256 "fa8f9a89c73841f7cb85acb61d2c0460a0a0e2878883a871a55a2405783ceb62"
  version "2.7.6"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.6"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "fa8f9a89c73841f7cb85acb61d2c0460a0a0e2878883a871a55a2405783ceb62"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "94e980b83a36669290b3cfad6ba3104c38549d0e014b1473f90becce279cf1f6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "20b7e0f429bd71fa95822b5be91ec09ed8d9442b53be2f2976af83224460ab8c"
    sha256 cellar: :any_skip_relocation, sonoma:        "50ea9b51cf372808cfdf8d35536369fdd0904a60be19861e9ad7d0bd3fb1154e"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "27c83468165cf1adcf25858769d681a9b716aabe8f021ad1eeea401e80a9f466"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "29388d11cb4becc56b56c4592e767d0a2f34c7810ce81da796086d36839aab22"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
