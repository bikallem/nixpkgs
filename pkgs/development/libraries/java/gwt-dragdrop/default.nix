{lib, stdenv, fetchurl}:

stdenv.mkDerivation {
  name = "gwt-dnd-2.6.5";

  src = fetchurl {
    url = "http://gwt-dnd.googlecode.com/files/gwt-dnd-2.6.5.jar";
    sha256 = "07zdlr8afs499asnw0dcjmw1cnjc646v91lflx5dv4qj374c97fw";
  };

  dontUnpack = true;

  installPhase = ''
    mkdir -p $out/share/java
    cp $src $out/share/java/$name.jar
  '';

  meta = with lib; {
    platforms = platforms.unix;
    license = licenses.asl20;
  };
}
