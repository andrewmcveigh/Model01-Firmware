# default.nix
{ stdenv, pkgs }:

stdenv.mkDerivation rec {
  name = "keyboardio-dev-${version}";
  src = ./.;
  version = "0.1.0";

  ARDUINO_PATH="${pkgs.arduino}/share/arduino";

  buildInputs = with pkgs; [
    arduino
  ];

  shellHook = ''
    export PATH="$PATH:${pkgs.arduino}/share/arduino"
  '';
}
