class Planet {
  PShape planet;
  String name;      // Name des Planeten
  float d;          // Abstand zur Sonne, Vielfaches von au
  float r;          // Radius des Planeten, vielfaches von Erdradius
  float umlz;       // Umlaufzeit um die Sonne
  float eigrot;     // Rotationsgeschw. um die eigene Achse
  PImage textur;    // Textur des Planeten
  PVector m = new PVector(width/2, height/2); //#TODO: Implementieren!

  // Konstruktor für Planeten mit Abstand, Größe, Winkelgeschwindigkeit
  Planet(float dist, float rad, float umlz, float eigrot, String name,PImage textur) {
    this.d = dist;
    this.r = rad;
    this.umlz = umlz;
    this.eigrot = eigrot;
    this.name = name;
    this.textur =  loadImage("earth.jpg");
    
  }

  void show() {
    pushMatrix();
    
    translate(d*au, 0);
    
    noFill();
    //sphere(this.r*erdrad);
    planet = createShape(SPHERE,this.r*erdrad);
    shape(planet);
    planet.setTexture(textur);
    fill(0);
    text(this.name,0,-this.r*erdrad-20);
        popMatrix();
    
  }
}
