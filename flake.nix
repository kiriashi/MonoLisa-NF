{
  description = "MonoLisa font packaging via flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };

        fonts = {
          MonoLisaBlack = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-Black.ttf";
            sha256 = "sha256-43EW/BjNyH7rjklyxhRF49wKPZqTGHTCGqTS4zYiY7s=";
          };
          MonoLisaBlackItalic = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-BlackItalic.ttf";
            sha256 = "sha256-tMePIOVHmhQYUTERz74dQ/y/2ZvBAkJHr99XTRCGQys=";
          };
          MonoLisaBold = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-Bold.ttf";
            sha256 = "sha256-h388DMtYf3pbKnGgv/MrcQ4wDVXWHoLwmHbyR+9BFzA=";
          };
          MonoLisaBoldItalic = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-BoldItalic.ttf";
            sha256 = "sha256-VwN1f3hPGkcH9hwp/XPk62vXdeMRl37trJ7AEb1JZQU=";
          };
          MonoLisaExtraLight = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-ExtraLight.ttf";
            sha256 = "sha256-mDxz/46yD0i1IVlFFKBFkedf2KXM8u+VLohgoOwOhy8=";
          };
          MonoLisaExtraLightItalic = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-ExtraLightItalic.ttf";
            sha256 = "sha256-BLX6pfBcX1hryDsFS1Qyx8NWX/bO7xVWJuhOwrbMefE=";
          };
          MonoLisaLight = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-Light.ttf";
            sha256 = "sha256-C/nTsCLm4f8KfyJlIuoE2bp3HwhlIaynCvbgMsZUeQ8=";
          };
          MonoLisaLightItalic = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-LightItalic.ttf";
            sha256 = "sha256-zL24wxIOXuP3AHBrFWty3Q9ARqSo78VYVonuqOQtovY=";
          };
          MonoLisaMedium = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-Medium.ttf";
            sha256 = "sha256-U/sYdX+vuZxYhnsM6aibuiLFK9Omi+pkzTpV3DTB8+k=";
          };
          MonoLisaMediumItalic = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-MediumItalic.ttf";
            sha256 = "sha256-a0xb8mbyjMumRkMwViHS86CWUODpUP/X8xeGS35tuAQ=";
          };
          MonoLisaRegular = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-Regular.ttf";
            sha256 = "sha256-SC6uPYCC4lBT4++4CFE2Nspiag8gG/dlvVWG6f0ZEnQ=";
          };
          MonoLisaRegularItalic = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-RegularItalic.ttf";
            sha256 = "sha256-H33VUB0GxlsXjBQUl4beY/m06okRzATypdLwy/uMj/4=";
          };
          MonoLisaThin = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-Thin.ttf";
            sha256 = "sha256-syGILKSkvJZWik6XvJ2OxcTYPFB/llB6yLSdmtbQAIU=";
          };
          MonoLisaThinItalic = pkgs.fetchurl {
            url = "https://github.com/Entity1011/MonoLisa/raw/staging/MonoLisa/MonoLisa-ThinItalic.ttf";
            sha256 = "sha256-WU6VbfYaS/UZV1CeNcWdVM0PX4YbWUM1i5yIG8YLuks=";
          };
        };

      in {
        packages.monolisa = pkgs.stdenv.mkDerivation {
          pname = "monolisa";
          version = "0.0.1";
          dontUnpack = true;

          inherit (fonts)
            MonoLisaBlack
            MonoLisaBlackItalic
            MonoLisaBold
            MonoLisaBoldItalic
            MonoLisaExtraLight
            MonoLisaExtraLightItalic
            MonoLisaLight
            MonoLisaLightItalic
            MonoLisaMedium
            MonoLisaMediumItalic
            MonoLisaRegular
            MonoLisaRegularItalic
            MonoLisaThin
            MonoLisaThinItalic;

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

        defaultPackage = self.packages.${system}.monolisa;
      }
    );
}
