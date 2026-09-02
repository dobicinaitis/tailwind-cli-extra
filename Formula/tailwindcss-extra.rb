class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.19/tailwindcss-extra-2.10.19.arm64_tahoe.bottle.tar.gz"
  sha256 "b7b8186d8f82e006ca4467df72496b93a48e2b64db9b1a13368655e5f6e67e44"
  version "2.10.19"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.19"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "b7b8186d8f82e006ca4467df72496b93a48e2b64db9b1a13368655e5f6e67e44"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ae58efaae28db7248974372e40eb9fe564788c10ef842ca2bef60b221690e584"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "e5348b02b466265e5d3d87cbe2d51b8ea710c26107589a1b0c171bab61869428"
    sha256 cellar: :any_skip_relocation, sonoma:        "9cf60c9523e4882e95a52ea7b63c8a229c73b31aedf8454cd4e389ed845f2908"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "dcb97bd7935b737d4f44d2a0a186fa0a242832bc735d74f0ae659858ad46b7d8"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "4bdd55316ad0d663384c47848e567948744062bd9e439c6a63b1b7c07bf5eaff"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
