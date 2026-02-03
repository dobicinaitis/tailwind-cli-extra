class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.7/tailwindcss-extra-2.7.7.arm64_tahoe.bottle.tar.gz"
  sha256 "31193104e99e3b022cbec4a1a557df33607237a5685a907bb7974dc3dd4dbf4f"
  version "2.7.7"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.7.7"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "31193104e99e3b022cbec4a1a557df33607237a5685a907bb7974dc3dd4dbf4f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6ec47e398e22d279e009abb8c2a78152c094fdcbfd93cca51391145743279eda"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "024b0edbf687190d8bf789f1377d5369b6e4702308591531561c806c2a8dfb63"
    sha256 cellar: :any_skip_relocation, sonoma:        "864b00647b4cb54d72f52e78b4d2d3569eacb3d257c283ef013f6abf3f566562"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "10f6311542b553bf74b614ec3d0173285c79c9c97adcc0477f7b68e751725862"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a16460f84f4d0da4f7851297415eef737e06454291262ed890612d14f63fa786"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
