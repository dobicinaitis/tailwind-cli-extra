class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.8.3/tailwindcss-extra-2.8.3.arm64_tahoe.bottle.tar.gz"
  sha256 "5f39d557089d980d5c9bd3ff6f271977a418337a6e9c50b7f47db82df0323b1a"
  version "2.8.3"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.8.3"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "5f39d557089d980d5c9bd3ff6f271977a418337a6e9c50b7f47db82df0323b1a"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "53d51d4633ea7fc86469318ce7955ae5844329bd702cd8530ad7189512461602"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "766cb3ef77b0a709004695db870acd795b1d4a5a2809640f2d9bafc8c60ef57c"
    sha256 cellar: :any_skip_relocation, sonoma:        "21414b5f545ecf57b196897d86271502a5e034f410f41ee1955b7b27a50ef144"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "35f8fa7ca6ac7f676fbbdb3995024501ff4ad461a242a321df47a95f06118d0c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f068ca8e68eac17684d687f1edce38dedbfa9b2a6685a64360e84e5897745281"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
