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
            MonoLisa-Full = inputs.nixpkgs.legacyPackages.x86_64-linux.stdenv.mkDerivation
            {
                pname = "MonoLisa Font";
                version = "0.0.0";

                MonoLisa-Black = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Black.ttf";
                    sha256 = "sha256-43EW/BjNyH7rjklyxhRF49wKPZqTGHTCGqTS4zYiY7s=";
                };

                MonoLisa-BlackItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-BlackItalic.ttf";
                    sha256 = "sha256-tMePIOVHmhQYUTERz74dQ/y/2ZvBAkJHr99XTRCGQys=";
                };

                MonoLisa-Bold = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Bold.ttf";
                    sha256 = "sha256-h388DMtYf3pbKnGgv/MrcQ4wDVXWHoLwmHbyR+9BFzA=";
                };

                MonoLisa-BoldItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-BoldItalic.ttf";
                    sha256 = "sha256-VwN1f3hPGkcH9hwp/XPk62vXdeMRl37trJ7AEb1JZQU=";
                };

                MonoLisa-ExtraLight = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-ExtraLight.ttf";
                    sha256 = "sha256-mDxz/46yD0i1IVlFFKBFkedf2KXM8u+VLohgoOwOhy8=";
                };

                MonoLisa-ExtraLightItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-ExtraLightItalic.ttf";
                    sha256 = "sha256-BLX6pfBcX1hryDsFS1Qyx8NWX/bO7xVWJuhOwrbMefE=";
                };

                MonoLisa-Light = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Light.ttf";
                    sha256 = "sha256-C/nTsCLm4f8KfyJlIuoE2bp3HwhlIaynCvbgMsZUeQ8=";
                };

                MonoLisa-LightItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-LightItalic.ttf";
                    sha256 = "sha256-zL24wxIOXuP3AHBrFWty3Q9ARqSo78VYVonuqOQtovY=";
                };

                MonoLisa-Medium = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Medium.ttf";
                    sha256 = "sha256-U/sYdX+vuZxYhnsM6aibuiLFK9Omi+pkzTpV3DTB8+k=";
                };

                MonoLisa-MediumItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-MediumItalic.ttf";
                    sha256 = "sha256-a0xb8mbyjMumRkMwViHS86CWUODpUP/X8xeGS35tuAQ=";
                };

                MonoLisa-Regular = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Regular.ttf";
                    sha256 = "sha256-SC6uPYCC4lBT4++4CFE2Nspiag8gG/dlvVWG6f0ZEnQ=";
                };

                MonoLisa-RegularItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-RegularItalic.ttf";
                    sha256 = "sha256-H33VUB0GxlsXjBQUl4beY/m06okRzATypdLwy/uMj/4=";
                };

                MonoLisa-Thin = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Thin.ttf";
                    sha256 = "sha256-syGILKSkvJZWik6XvJ2OxcTYPFB/llB6yLSdmtbQAIU=";
                };

                MonoLisa-ThinItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-ThinItalic.ttf";
                    sha256 = "sha256-WU6VbfYaS/UZV1CeNcWdVM0PX4YbWUM1i5yIG8YLuks=";
                };

                dontUnpack = true;
                installPhase = ''
                    mkdir -p $out/share/fonts/truetype
                    cp $MonoLisa-Black $out/share/fonts/truetype/
                    cp $MonoLisa-BlackItalic $out/share/fonts/truetype/
                    cp $MonoLisa-Bold $out/share/fonts/truetype/
                    cp $MonoLisa-BoldItalic $out/share/fonts/truetype/
                    cp $MonoLisa-ExtraLight $out/share/fonts/truetype/
                    cp $MonoLisa-ExtraLightItalic $out/share/fonts/truetype/
                    cp $MonoLisa-Light $out/share/fonts/truetype/
                    cp $MonoLisa-LightItalic $out/share/fonts/truetype/
                    cp $MonoLisa-Medium $out/share/fonts/truetype/
                    cp $MonoLisa-MediumItalic $out/share/fonts/truetype/
                    cp $MonoLisa-Regular $out/share/fonts/truetype/
                    cp $MonoLisa-RegularItalic $out/share/fonts/truetype/
                    cp $MonoLisa-Thin $out/share/fonts/truetype/
                    cp $MonoLisa-ThinItalic $out/share/fonts/truetype/
                '';
            };
        };
    };
}