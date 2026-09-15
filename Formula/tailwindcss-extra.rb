class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.25/tailwindcss-extra-2.10.25.arm64_tahoe.bottle.tar.gz"
  sha256 "e747c1ca5a3ebbfe5849416d96ba30ab81f7e83c173513b1e11410d4a1e016af"
  version "2.10.25"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.10.25"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "e747c1ca5a3ebbfe5849416d96ba30ab81f7e83c173513b1e11410d4a1e016af"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3b1488ae10fdcd951b36f2471520ca00f65474b7140b4930ed4db6ac2d8b315a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "f00a5f6028f84415a2e4c6022405aa316ad0bd833d698ee94e3491904167b67f"
    sha256 cellar: :any_skip_relocation, sonoma:        "9bffa55d6ef5f8275409d5e2b76b05baf74ab44fddc5634ab772f00eaf937c8a"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "55fc064a25c940ad405738741d80e76026d340b06c8caf05ce4829b0363eae5f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "d44b99305bf0d7ec1edcbd5674ca1468df5974ec2d21cc1b6afca1c5cd4e1098"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
