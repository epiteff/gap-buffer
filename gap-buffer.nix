{ mkDerivation, base, hspec, stdenv }:
mkDerivation {
  pname = "gap-buffer";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base hspec ];
  license = stdenv.lib.licenses.bsd3;
}
