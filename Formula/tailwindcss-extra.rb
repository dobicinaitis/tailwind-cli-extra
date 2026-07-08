class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.4/tailwindcss-extra-2.9.4.arm64_tahoe.bottle.tar.gz"
  sha256 "6936ceeb0c4016917f6588dbb0419e7a556baa5f09385d4eeaa6547715bd827d"
  version "2.9.4"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "6936ceeb0c4016917f6588dbb0419e7a556baa5f09385d4eeaa6547715bd827d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2c0bef2e411ebcc61492e8385b7e981487704083d2c0c7abbc2b47271e83ea36"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "51d1578efd4580aae77b7d5b657bf432185c349920d653dfa838a18220a0ff0a"
    sha256 cellar: :any_skip_relocation, sonoma:        "4ec4d2e7c19da19b08be4a2d7cf7c72c60e4aee4d3f5060182575f040a1e27ad"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "75f9a758911719d6f63c5be5648738f2d4c430e4a517f0f95a9b99e6e2203898"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "eae0bdea4306ffe55e8c11185512332e6a5c4eff21ac328476a9471c729d0124"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
