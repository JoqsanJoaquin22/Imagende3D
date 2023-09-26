PShape microwave;
PImage txtr;
float theta;

void setup() {
  size (600, 600, P3D);
  txtr = loadImage("texture-01.jpg");
  microwave = loadShape("microwave.obj");
  microwave.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (166,230, 0);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale(26.5);
  shape (microwave);
  popMatrix();

  theta+=.01; //increment angle
}
