class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.9/tailwindcss-extra-2.10.9.arm64_tahoe.bottle.tar.gz"
  sha256 "c5b2d420a9e5a71f64b15bb9fbe1835869a4c0a6f3c5a93a2a7dbec0968d06af"
  version "2.10.9"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.9"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "c5b2d420a9e5a71f64b15bb9fbe1835869a4c0a6f3c5a93a2a7dbec0968d06af"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e2de6dcc9eebf45413ac58bd4a7a5a65c96340daa13c4544a52c557ad2b5866e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "12a7e16c0d86928391c222544e9fb40a8319424a2500c3db3acd08e30b34e297"
    sha256 cellar: :any_skip_relocation, sonoma:        "d804adcaf1d7f79f0c8bd452b0a872e31e2ffe913f1ba267587087b85bbd4e40"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "2f4cc77ea42ca766e4c81369dabb085be4e773ff32fbf8132803f8bcd2cec0b0"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "22ed6eaf8272ea68629d0ccd69bc5223d51ec11a78391175d9e40d53e950af0a"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
