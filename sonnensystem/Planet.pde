class Planet {
  // statische Eigenschaften 
  PShape shape;
  String name;      // Name des Planeten
  float d;          // Abstand zur Sonne, Vielfaches von au
  float r;          // Radius des Planeten, vielfaches von Erdradius
  float umlz;       // Umlaufzeit um die Sonne in Tagen
  float eigrot;     // Rotationsgeschw. um die eigene Achse in Tagen
  PImage textur;    // Textur des Planeten
  PVector m = new PVector(width/2, height/2); //#TODO: Implementieren!

  // dynamische Eigenschaften:
  float momDrehung = 0;
  float momRot = 0;

  // Konstruktor für Planeten mit Abstand, Größe, Winkelgeschwindigkeit
  Planet(float dist, float rad, float umlz, float eigrot, String name) {
    this.d = dist;
    this.r = log(rad*10);
    this.umlz = umlz;
    this.eigrot = eigrot;
    this.name = name;
    this.textur =  loadImage(this.name + ".jpg");

    // Einmaliges erstellen der Shape: 
  }

  void show() {
    pushMatrix();
    // leichte Aufsicht auf das Sonnensystem
    // Drehung um die Sonne
    // Wegbewegen um den Abstand
    translate(this.d*au, 0);

    // Drehung um die eigene Achse
    
    // Zeichnen der Shape
    // Text: Zurückdrehen und schreiben
    
    // Alle Verschiebungen und Verdrehungen rückgängig machen 
    // Den Planet weiter um die Sonne und um sich selbst drehen
  }
}