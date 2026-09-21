class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.29/tailwindcss-extra-2.10.29.arm64_tahoe.bottle.tar.gz"
  sha256 "95978a3aa9214c43940f76c4b30988803a9966bc41e97af1dcfa6f9f06315a2f"
  version "2.10.29"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.29"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "95978a3aa9214c43940f76c4b30988803a9966bc41e97af1dcfa6f9f06315a2f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a5f35b2d1ef5ed1664b3f329d283a6db49ee005efda8b07d1c1159d39b42bc3a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "bf408ee57bc57ad39b44f042aba74dcb8cc7fa3221aa0b8963bd526649aefb13"
    sha256 cellar: :any_skip_relocation, sonoma:        "c2e88783f46185db29fa7447062d75df80091264d7e021217c71959fb60fa1bf"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "bd763bd3bdf75c79ac9ed6d93dafd3f905f8998c481e5cc9e140398906cdf0a9"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "7cf4cb0bac3c7ba49866bff1c251b367743deff8022103e23595341a121a471d"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
