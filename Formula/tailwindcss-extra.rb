class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.8/tailwindcss-extra-2.7.8.arm64_tahoe.bottle.tar.gz"
  sha256 "3f51faf36e795ab432b1406278be301286f36b1cd911b2a5ab68274ff023e839"
  version "2.7.8"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.8"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "3f51faf36e795ab432b1406278be301286f36b1cd911b2a5ab68274ff023e839"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6c86e2e4663095d5a30b5fad6135a8c582a6c227d275023ae168c0be3bd5db5f"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "83c8103d5da31840585d8f0f41ef248db6ae44c0151b995daa31c6f8c283fcf4"
    sha256 cellar: :any_skip_relocation, sonoma:        "b1ffa42f5eacbec331e2217984143548539c22d3079d3009fc2db29e8819699b"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "7c8aa71c20870fd1a4499c2d7a5c2b501875f651e62b6a943b1d68487b616efa"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e28a4fa3bb1b90a1bfb8c5094aaa7d234c675938ba8cc371c7eebb94098e4ecf"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
