{
    inputs =
    {
        nixpkgs =
        {
            url = "github:NixOS/nixpkgs/nixos-24.11";
        };
        MonoLisa =
        {
            url = "https://github.com/matomo-org/travis-scripts/raw/refs/heads/master/fonts/Arial.ttf";
            flake = false;
        };
    };

    outputs = inputs:
    {
        packages = 
        {
            test = inputs.nixpkgs.legacyPackages.x86_64-linux.stdenv.mkDerivation
            {
                pname = "MonoLisa Font";
                version = "0.0.0";
                src = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/matomo-org/travis-scripts/raw/refs/heads/master/fonts/Arial.ttf";
                    sha256 = "sha256-NcDzVZ2NtWnjbDEJW4pg1EFkPZX1kTneQOI/ragZuDM=";
                };
                dontUnpack = true;
                installPhase = ''
                    mkdir -p $out/share/fonts/truetype
                    mv $src/*.ttf $out/share/fonts/truetype/
                '';
            };
        };
    };
}