class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.26/tailwindcss-extra-2.10.26.arm64_tahoe.bottle.tar.gz"
  sha256 "eca13ba7a8e88780265b408897351e3cac5c40f0c722f379b1c91a00caf8ebf9"
  version "2.10.26"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.26"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "eca13ba7a8e88780265b408897351e3cac5c40f0c722f379b1c91a00caf8ebf9"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "b4743a3f23f1ac1bb31291a19d36164420a098165969c140ad3264ab0a55640a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "f811aeb80cc04f71ef24b06264e56ad37af3d37dc58fa5e089d7d023bd28bd7b"
    sha256 cellar: :any_skip_relocation, sonoma:        "136caa569cf588645d73477ed08ecbcc9a75f789908a74f7a4118cac876101bd"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "674a4f1c26524caa07abe12ca213f582be454b309f5c815fd6913aa9d70f347b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "055ad02178361c0eaa316dc0173c80c3dfe7a75a97f6fe962064f1cc033dcfe7"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
