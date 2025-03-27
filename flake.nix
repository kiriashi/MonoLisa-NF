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

                MonoLisaBlack = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Black.ttf";
                    sha256 = "sha256-43EW/BjNyH7rjklyxhRF49wKPZqTGHTCGqTS4zYiY7s=";
                };

                MonoLisaBlackItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-BlackItalic.ttf";
                    sha256 = "sha256-tMePIOVHmhQYUTERz74dQ/y/2ZvBAkJHr99XTRCGQys=";
                };

                MonoLisaBold = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Bold.ttf";
                    sha256 = "sha256-h388DMtYf3pbKnGgv/MrcQ4wDVXWHoLwmHbyR+9BFzA=";
                };

                MonoLisaBoldItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-BoldItalic.ttf";
                    sha256 = "sha256-VwN1f3hPGkcH9hwp/XPk62vXdeMRl37trJ7AEb1JZQU=";
                };

                MonoLisaExtraLight = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-ExtraLight.ttf";
                    sha256 = "sha256-mDxz/46yD0i1IVlFFKBFkedf2KXM8u+VLohgoOwOhy8=";
                };

                MonoLisaExtraLightItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-ExtraLightItalic.ttf";
                    sha256 = "sha256-BLX6pfBcX1hryDsFS1Qyx8NWX/bO7xVWJuhOwrbMefE=";
                };

                MonoLisaLight = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Light.ttf";
                    sha256 = "sha256-C/nTsCLm4f8KfyJlIuoE2bp3HwhlIaynCvbgMsZUeQ8=";
                };

                MonoLisaLightItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-LightItalic.ttf";
                    sha256 = "sha256-zL24wxIOXuP3AHBrFWty3Q9ARqSo78VYVonuqOQtovY=";
                };

                MonoLisaMedium = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Medium.ttf";
                    sha256 = "sha256-U/sYdX+vuZxYhnsM6aibuiLFK9Omi+pkzTpV3DTB8+k=";
                };

                MonoLisaMediumItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-MediumItalic.ttf";
                    sha256 = "sha256-a0xb8mbyjMumRkMwViHS86CWUODpUP/X8xeGS35tuAQ=";
                };

                MonoLisaRegular = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Regular.ttf";
                    sha256 = "sha256-SC6uPYCC4lBT4++4CFE2Nspiag8gG/dlvVWG6f0ZEnQ=";
                };

                MonoLisaRegularItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-RegularItalic.ttf";
                    sha256 = "sha256-H33VUB0GxlsXjBQUl4beY/m06okRzATypdLwy/uMj/4=";
                };

                MonoLisaThin = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-Thin.ttf";
                    sha256 = "sha256-syGILKSkvJZWik6XvJ2OxcTYPFB/llB6yLSdmtbQAIU=";
                };

                MonoLisaThinItalic = inputs.nixpkgs.legacyPackages.x86_64-linux.fetchurl
                {
                    url ="https://github.com/Entity1011/MonoLisa/raw/refs/heads/staging/MonoLisa/MonoLisa-ThinItalic.ttf";
                    sha256 = "sha256-WU6VbfYaS/UZV1CeNcWdVM0PX4YbWUM1i5yIG8YLuks=";
                };

                dontUnpack = true;
                installPhase = ''
                    mkdir -p $out/share/fonts/truetype
                    cp $MonoLisaBlack $out/share/fonts/truetype/
                    cp $MonoLisaBlackItalic $out/share/fonts/truetype/
                    cp $MonoLisaBold $out/share/fonts/truetype/
                    cp $MonoLisaBoldItalic $out/share/fonts/truetype/
                    cp $MonoLisaExtraLight $out/share/fonts/truetype/
                    cp $MonoLisaExtraLightItalic $out/share/fonts/truetype/
                    cp $MonoLisaLight $out/share/fonts/truetype/
                    cp $MonoLisaLightItalic $out/share/fonts/truetype/
                    cp $MonoLisaMedium $out/share/fonts/truetype/
                    cp $MonoLisaMediumItalic $out/share/fonts/truetype/
                    cp $MonoLisaRegular $out/share/fonts/truetype/
                    cp $MonoLisaRegularItalic $out/share/fonts/truetype/
                    cp $MonoLisaThin $out/share/fonts/truetype/
                    cp $MonoLisaThinItalic $out/share/fonts/truetype/
                '';
            };
        };
    };
}