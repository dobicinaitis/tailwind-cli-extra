class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.0/tailwindcss-extra-2.7.0.arm64_tahoe.bottle.tar.gz"
  sha256 "825b276bf9555b20a36bab557ce1284254527982cf7a563f8a057c0af8a76c08"
  version "2.7.0"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "825b276bf9555b20a36bab557ce1284254527982cf7a563f8a057c0af8a76c08"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "501d8a699f1f1719d4c16e2cc2bda0eb4eebf64fe811fa6ac27b528735c46430"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "906e22069344637d8f91b5036115d534824e15962362992e0070b0c1251f3308"
    sha256 cellar: :any_skip_relocation, sonoma:        "037e5349d297b140bee1a79d625f3018699791a84db345c85a22a8adb655be29"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "87009109db6c9ceabb162ffb5703a571a826cd1a80a78a7cbda3503c38e54961"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "96d80120758728cc664fd1df055fb6b4324a22b97df7128188255b9a3bf6e9d1"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
