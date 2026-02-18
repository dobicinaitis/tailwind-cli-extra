class TailwindcssExtra < Formula
  desc "Tailwind CSS standalone CLI (extra)"
  homepage "https://github.com/dobicinaitis/tailwind-cli-extra"
  url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.8.0/tailwindcss-extra-2.8.0.arm64_tahoe.bottle.tar.gz"
  sha256 "b121e2c15516feb2052d1878874c09c71ff157fa024ef00d9b34ddf5c4711a82"
  version "2.8.0"

  bottle do
    root_url "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v2.8.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "b121e2c15516feb2052d1878874c09c71ff157fa024ef00d9b34ddf5c4711a82"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "370e021cdf1b3c80aeb308d852309d9994613fdd49fb6a2e298a14b5a07442cd"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "9791ca07161b89aab33a4e199d4886768aa01f1c6c9d725fcec2e90a5ffca843"
    sha256 cellar: :any_skip_relocation, sonoma:        "88e6ee68330af16e0199945aea734a236a64654f026699c4f0c2ae9f986009da"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "9fa9cb503993b9c942d0129bcbf90de1177cd8b285aedf816c571c6ad2fae9cd"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "bd9af90c72c317d434bab70130a2044a61f9e131b5db74ca6439a439b9e8b744"
  end

  def install
    bin.install "tailwindcss-extra"
  end

  test do
    system "#{bin}/tailwindcss-extra", "--help"
  end
end
