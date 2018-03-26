Planet[] planeten = new Planet[9];

final float au = 150;    // Astronomical Unit, final bedeutet es kann nach Programmstart nicht mehr geändert werden
final float erdrad = 5; // Radius der Erde

void setup() {
  fullScreen(P3D);
  //noStroke();
  // dist,  rad,  umlz, eigrot  
  planeten[0] = new Planet(   0, 20/*116*/, 1, 25, "Sonne", "earth.jpg"); // Sonne
  planeten[1] = new Planet(0.38, 0.4, 87, 60, "Merkur"); // Merkur
  planeten[2] = new Planet(0.72, 1, 224, 243, "Venus"); // Venus
  planeten[3] = new Planet(   1, 1, 365, 1, "Erde", "earth.jpg"); // Erde
  planeten[4] = new Planet( 1.5, 0.56, 686, 1, "Mars"); // Mars
  planeten[5] = new Planet( 5.2, 12, 4307, 0.42, "Jupiter"); // Jupiter
  planeten[6] = new Planet( 9.6, 10, 10950, 0.43, "Saturn"); // Saturn
  planeten[7] = new Planet(19.2, 4.2, 30660, 0.72, "Uranus"); // Uranus
  planeten[8] = new Planet(  30, 4.2, 59860, 0.67, "Neptun"); // Neptun
}

void draw() {

  background(255);
  translate(width/2, height/2);
  for (Planet p : planeten) {
    p.show();
  }
  println(mouseX + ":" + mouseY);
}
