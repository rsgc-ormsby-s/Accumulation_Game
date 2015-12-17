//Purpose: To accumalate your bubble to become the biggest

//Rules: If you eat pellets your size increases and decreases based on the pellet you eat.
//Pellet Descriptions Bellow      

//Pellet Rules: 
//Yellow Pellets = Decreases size by a lot
//Red Pellets = Decreases size by a moderate amount
//Blue Pellets = Increases size by a moderate amount
//Green Pellets = Increases size by a lot.

//Global Variables
float EllipseY = 400;
float EllipseX = 400;
float EllipseW = 50;
float EllipseH = 50;
float EllipseSH = 0;
float EllipseSV = 0;

//Functions only run once.
void setup() {
  size(800, 800);
}

void draw() {
  //Create and Clear the Background
  background(0, 0, 100);
  ellipse(EllipseX, EllipseY, EllipseW, EllipseH);
  //Create the Illusion of Movement
  EllipseX = EllipseX + EllipseSV;
  EllipseY = EllipseY + EllipseSH;
}

void keyPressed() {
  if (key == 's') {
    EllipseSH = 2;
    EllipseSV = 0;
    println("Hello");
  }
  if (key == 'w'){
    EllipseSH = -2;
    EllipseSV = 0; 
  }
  if (key == 'a'){
    EllipseSV = -2;
    EllipseSH = 0; 
  }
  if (key == 'd'){
    EllipseSV = 2;
    EllipseSH = 0;
  }
}