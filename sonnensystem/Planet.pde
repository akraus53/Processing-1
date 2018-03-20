class Planet {

  String name;      // Name des Planeten
  float d;          // Abstand zur Sonne, Vielfaches von au
  float r;          // Radius des Planeten, vielfaches von Erdradius
  float umlz;       // Umlaufzeit um die Sonne
  float eigrot;     // Rotationsgeschw. um die eigene Achse
  PImage textur;    // Textur des Planeten
  PVector m = new PVector(width/2, height/2); //#TODO: Implementieren!

  // Konstruktor für Planeten mit Abstand, Größe, Winkelgeschwindigkeit
  Planet(float dist, float rad, float umlz, float eigrot) {
    this.d = dist;
    this.r = rad;
    this.umlz = umlz;
    this.eigrot = eigrot;
  }
  
  void show(){
    // Malen des Planeten 
    
  }
  
  
}