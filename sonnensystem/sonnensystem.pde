Planet[] planeten = new Planet[9];

final float au = 700;    // Astronomical Unit, final bedeutet es kann nach Programmstart nicht mehr geändert werden
final float erdrad = 30; // Radius der Erde
PImage bg;

void setup() {
  fullScreen(P3D);
  textSize(40);

  //                      dist,  rad, umlz, eigrot, name
  planeten[0] = new Planet(   0, 116, 1000, 1000, "Sonne");
  planeten[1] = new Planet(0.38, 0.4, 87, 60, "Merkur");
  planeten[2] = new Planet(0.72, 1.0, 224, 243, "Venus");
  planeten[3] = new Planet(   1, 1.0, 365, 1, "Erde");
  planeten[4] = new Planet( 1.5, 0.56, 686, 1, "Mars");
  planeten[5] = new Planet( 5.2, 12, 4307, 0.42, "Jupiter");
  planeten[6] = new Planet( 9.6, 10, 10950, 0.43, "Saturn"); 
  planeten[7] = new Planet(19.2, 4.2, 30660, 0.72, "Uranus");
  planeten[8] = new Planet(  30, 4.2, 59860, 0.67, "Neptun");
}

void draw() {
  // Hintergrund schwarz
  background(0);
  
  // Zentrum in die Mitte und etwas weiter weg bewegen
  translate(width/2, height/2, -au);

  // Zeichne alle Planeten
  for (Planet p : planeten) {
    p.show();
  }
}

// #TODO implementieren von Features von hier? https://processing.org/tutorials/p3d/