class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.7/tailwindcss-extra-2.10.7.arm64_tahoe.bottle.tar.gz"
  sha256 "87ec15c840ca51bd61b0f6a06040e0b89293a83438a55a52faa97722084652ec"
  version "2.10.7"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.7"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "87ec15c840ca51bd61b0f6a06040e0b89293a83438a55a52faa97722084652ec"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "217fb3bbd62e2b3e555f052874dbc0385147c52ef8e8c11c772d7e2aa38dd2ab"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "c18611155cc798f164fe582ff8b696462f19f2f755defc4bfbe5ee606dce3b5c"
    sha256 cellar: :any_skip_relocation, sonoma:        "08cd3568b6aa1d39a10d1299072c3f327327a3af719b9f6e9e4e6923a12bd1f1"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "58f59a8b3725f7019d7ca249b22a2d0da5e916b0c05ef3f5581627fd2f0aa638"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "46be196cfa21b0ba4f2edcca978d57d94c0a9425ad67e7d62f0e8e7a051110c5"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
