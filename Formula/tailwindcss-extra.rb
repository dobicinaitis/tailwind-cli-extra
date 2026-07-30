class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.4/tailwindcss-extra-2.10.4.arm64_tahoe.bottle.tar.gz"
  sha256 "8ed26f824fcc5351ca1c746930437830c590a743c146823cfe92f762e81bcb74"
  version "2.10.4"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "8ed26f824fcc5351ca1c746930437830c590a743c146823cfe92f762e81bcb74"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d03474fa80075dd5bfbc1752562f0b1f8b4e4ec38bc438fe8053349064b319ec"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "f1d1f3f3b8a33e646c79bb08a1a0193e3ce93dc1a72fc45dfd13906a426a334d"
    sha256 cellar: :any_skip_relocation, sonoma:        "55182a69add8e622ad6912acfbccfae914fa6e541ce82b6e805aa0a12c68f4b7"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "bff6401ac4018e30b4c9a42d8cf0a9f145989bc7eda2e39457474cdd85a7dfbf"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "bfc37c2257ed0cb2eb58f49325ac5aaac039caa165a69ba3a594e8e1e2ee0aad"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
