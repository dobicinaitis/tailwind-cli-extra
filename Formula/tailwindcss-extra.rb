class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.5/tailwindcss-extra-2.10.5.arm64_tahoe.bottle.tar.gz"
  sha256 "6495fe7e0fac3d4baf789bd071a948c6735f2c2ee4cb59c5c618bad3b312bef4"
  version "2.10.5"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.5"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "6495fe7e0fac3d4baf789bd071a948c6735f2c2ee4cb59c5c618bad3b312bef4"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "66f1db8842412aad0d49223dff2889f813da20399752e97c86930cd7a83a9cbd"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "8deb3ef26d6e219c3927a45d725e9998967295d5e63a62dac49430e5e3c4f136"
    sha256 cellar: :any_skip_relocation, sonoma:        "6a0bfb836023aee7c2b4938bce3d769b9485a155b70b23efb0c4331cb1eb69aa"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "afff8e962f9464dc18b61d9d18a038bf5a518d86870cbb6411422342f592b427"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e46d2ce83531ca2b1e06404c9250e714cca22e736d6d59f5586d8c83c3e09b10"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
