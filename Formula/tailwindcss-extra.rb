class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.6/tailwindcss-extra-2.9.6.arm64_tahoe.bottle.tar.gz"
  sha256 "11d2be5535b1d3784ede40e5e42837895c9710858ee0534abd677f60e3790e16"
  version "2.9.6"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.6"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "11d2be5535b1d3784ede40e5e42837895c9710858ee0534abd677f60e3790e16"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "5fe1405dbccfbf7db2434047e0b320c60290c7a0681a10702173f56678697f4c"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "c71dc9e1e4dafb17b510c90bb22b76ff15f44790feea51896c82b24805d9102c"
    sha256 cellar: :any_skip_relocation, sonoma:        "591b17f200d40e51a38a5ae302ec1063ce20c48e4079e3c5a6ec92415112a26e"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "819b2d46982220d49811c63732241606a12d691dd5472e065ce61c4b46c5ff72"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a731d1f7e9dd39d8e76d46351077885735378643b2c5f977631a29cd087bf790"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
