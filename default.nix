{
  stdenv,
  fetchurl,
  system,
}:
stdenv.mkDerivation rec {
  pname = "tailwind-cli-extra";
  version = "1.0.1";

  inherit system;
  binarySuffix =
    {
      "aarch64-linux" = "linux-arm64";
      "armv7-linux" = "linux-armv7";
      "x86_64-linux" = "linux-x64";
      "arm64-darwin" = "macos-arm64";
      "x86_64-darwin" = "macos-x64";
      "arm64-windows" = "windows-arm64";
      "x86_64-windows" = "windows-x64";
    }
    ."${system}";
  binaryName = "tailwindcss-extra-${binarySuffix}";
  src = fetchurl {
    url = "https://github.com/dobicinaitis/tailwind-cli-extra/releases/download/v${version}/${binaryName}";
    hash = "sha256-Ta5vgtfP2YapX1L5uNK9LoEtMiFuRLblabRzvg9XcLE=";
  };

  phases = ["installPhase" "patchPhase"];
  installPhase = ''
    mkdir -p $out/bin
    cp $src $out/bin/tailwindcss
    chmod +x $out/bin/tailwindcss
  '';
  meta = {
    homepage = "https://github.com/dobicinaitis/tailwind-cli-extra";
    description = "Tailwind CSS standalone CLI bundled with daisyUI";
  };
}
