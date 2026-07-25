class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.1/tailwindcss-extra-2.10.1.arm64_tahoe.bottle.tar.gz"
  sha256 "ce8e64a2c7034eb2cac4ddef1ccf0b9234dfdce997b7244563741c51f6afadc9"
  version "2.10.1"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "ce8e64a2c7034eb2cac4ddef1ccf0b9234dfdce997b7244563741c51f6afadc9"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d09cc5334fc38b806794437c4224d01016d214bb77efb8454ae14efd10eea5df"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "0ef006c6ab2be054b1b3433374754ec5d2e15f36b0aa959dfb403afabeb5cab5"
    sha256 cellar: :any_skip_relocation, sonoma:        "0fcab9a0b6f983f6ab3e11949c1a644ca1c6c467751dc6aff45c72bf494ae655"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "6eb8c84e1fbfbcaf7ecf9dce51f5ae9fb3e10a6149032e238e1ffcb9e89431b1"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c0926adb2f9f8c01fe0416980a035f7581aadcf322740a995489ef4bfe60c813"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
