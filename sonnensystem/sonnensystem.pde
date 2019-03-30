float au = 300;    // Astronomical Unit
float erdrad = au/30; // Radius der Erde
float speed = 0.01;
PImage bg;
Planet sun;
Planet sun2;
void setup() {
  //size(700, 400, P3D);
  fullScreen(P3D);
  textSize(40);
  
  
  sun = deserialize(loadJSONArray("jup.json").getJSONObject(0));

  //sun = deserialize(loadJSONArray("sol.json").getJSONObject(0));
  //sun2= new Planet(   0, 116, 1000, 1000, "Sonne");
}

void draw() {
  // Abstand der Planeten ist Mausabhängig
  au = map(mouseY, 0, height, 2500, 100);

  // Hintergrund schwarz
  background(50);

  // Zentrum in die Mitte und etwas weiter weg bewegen
  translate(width/2, height/2, -au);
  noLights();
  // Zeichne alle Planeten

  //pointLight(255, 255, 255, 0, 0, 0);

  sun.show();
  noLights();
  //sun2.show();
  
  speed = map(mouseX, 0, width, 0, 2);
}

Planet deserialize(JSONObject sunJSON) {

  //thisAsJSON.setJSONArray("children", children);

  //thisAsJSON.setFloat("dist", this.d);  
  //thisAsJSON.setFloat("radius", this.r);
  //thisAsJSON.setFloat("umlaufzeit", this.umlz);
  //thisAsJSON.setFloat("eigenrotation", this.eigrot);

  //thisAsJSON.setString("name", this.name);


  float dist = sunJSON.getFloat("dist");
  
  //this.r = log(rad*erdrad*10);
  // exp(radius) = rad*erdrad*10
  // exp(radius)/(erdrad*10) = rad
  
  float radius = exp(sunJSON.getFloat("radius"))/(erdrad*10);
  float umlaufzeit = sunJSON.getFloat("umlaufzeit");
  float eigenrotation = sunJSON.getFloat("eigenrotation");
  String name = sunJSON.getString("name");

  Planet deserial = new Planet(dist, radius, umlaufzeit, eigenrotation, name);


  JSONArray moons = sunJSON.getJSONArray("children");
  for (int i = 0; i < sunJSON.getJSONArray("children").size(); i++) {
    JSONObject moon = moons.getJSONObject(i);
    Planet newMoon = deserialize(moon);
    deserial.addChild(newMoon);
  }
  return deserial;
}

// #TODO implementieren von Features von hier? https://processing.org/tutorials/p3d/
