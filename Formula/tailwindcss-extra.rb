class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.6/tailwindcss-extra-2.10.6.arm64_tahoe.bottle.tar.gz"
  sha256 "1d93741b31a5eece95c512312514361e7b1f36029196e0ee3f3cbcef02104239"
  version "2.10.6"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.6"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "1d93741b31a5eece95c512312514361e7b1f36029196e0ee3f3cbcef02104239"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "721920c640c133714a0bd50ff07a0eb0945cda2070c3a0128430e1099311011b"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "14a397924592392672518d946414163823e759e59ec73f062f726c2af673d5ac"
    sha256 cellar: :any_skip_relocation, sonoma:        "b1ef7eae55a94ccfabb339a1543476de5ef6bd21afac0addc916f91ee6816e26"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "c7e9ba4af5282af9ae1f0cc590d499b9a8e5bd7ac9a6a9f4638e19e93f91166d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "58dec71db4d36460bbf3acc4b53df1647c72347ccebcdb34d85a4c662dacc6d7"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
