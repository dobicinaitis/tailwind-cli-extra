class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.7/tailwindcss-extra-2.9.7.arm64_tahoe.bottle.tar.gz"
  sha256 "16874f81159b873eda27e28a209a188b3f58097d0bc4eb57f8d928bf3ad34ba4"
  version "2.9.7"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.9.7"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "16874f81159b873eda27e28a209a188b3f58097d0bc4eb57f8d928bf3ad34ba4"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "605ed1ad4a65fd6ca6115e6b8accb21c5c0307ebfbc23db6e1f90fd127a9bd00"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "c997a3d311ff4603f5e8df04dc01fc887d1489a27e5ded89cf59be7a7a1eb914"
    sha256 cellar: :any_skip_relocation, sonoma:        "a54d97c826e2c2b6bebc8a17ce13bd1152191fe9954a39708e43f8a7e5a251cf"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "ac91b249d35092e0d66e5ce2daeaaaed45664f3c408b5eef648a62169d6ac7f7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6e19844a86c5719591809bdfb11b465a583fe256ce99318c6c291e08340c9126"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
