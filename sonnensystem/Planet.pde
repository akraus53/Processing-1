class Planet {
  // statische Eigenschaften 
  PShape shape;
  String name;      // Name des Planeten
  float d;          // Abstand zur Sonne, Vielfaches von au
  float r;          // Radius des Planeten, vielfaches von Erdradius
  float umlz;       // Umlaufzeit um die Sonne in Tagen
  float eigrot;     // Rotationsgeschw. um die eigene Achse in Tagen
  PImage textur;    // Textur des Planeten
  ArrayList<Planet> children = new ArrayList<Planet>();


  // dynamische Eigenschaften:
  float momDrehung = 0;
  float momRot = 0;


  // Konstruktor für Planeten mit Abstand, Größe, Winkelgeschwindigkeit
  Planet(float dist, float rad, float umlz, float eigrot, String name) {
    this.d = dist;
    this.r = log(rad*erdrad*10);
    this.umlz = umlz;
    this.eigrot = eigrot;
    this.name = name;
    
      this.textur =  loadImage(this.name + ".jpg");
    // Einmaliges erstellen der Shape: 
    this.shape = createShape(SPHERE, this.r*erdrad);
    this.shape.setTexture(textur);
    this.shape.setStroke(false);
  }

  void show() {
    pushMatrix();
    //noFill();
    stroke(255);
    //strokeWeight(20);

    //    for (int i = 0; i < 360; i++) {
    //      pushMatrix();
    //      rotateX(radians(-20));

    //      rotateY(radians(i));
    //      translate(this.d*au, 0);
    //      point(0, 0, 0);
    //      popMatrix();
    //    }

    // leichte Aufsicht auf das Sonnensystem
    rotateX(radians(-20));

    // Drehung um die Sonne
    rotateY(this.momDrehung);

    // Wegbewegen um den Abstand
    translate(this.d*au, 0);

    // Drehung um die eigene Achse
    rotateY(this.momRot);

    // Zeichnen der Shape
    shape(this.shape);

    // Text: Zurückdrehen und schreiben
    rotateY(-this.momDrehung-this.momRot);
    text(this.name, 0, -(this.r*erdrad)-20);


    // Alle Verschiebungen und Verdrehungen rückgängig machen 

    for (Planet c : children) {
      c.show();
    }

    popMatrix();



    // Den Planet weiter um die Sonne und um sich selbst drehen
    this.momDrehung += 1/this.umlz * 4 * speed;
    this.momRot += 1/this.eigrot * 0.2 * speed;
  }

  Planet addChild(Planet p) {
    this.children.add(p);
    return this;
  }
}
