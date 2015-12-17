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
float YPY = random(1, 600);
float YPX = random(1, 600);
float RPY = random(1, 600);
float RPX = random(1, 600);

//Functions only run once.
void setup() {
  size(800, 800);
}

void draw() {
  
  //Create and Clear the Background
  background(0, 0, 100);
  fill(128, 35, 205);
  ellipse(EllipseX, EllipseY, EllipseW, EllipseH);
  
  //Create the Illusion of Movement
  //Vertical Movement
  EllipseX = EllipseX + EllipseSV;
  //Horizontal Movement
  EllipseY = EllipseY + EllipseSH;
  
  //Creates the Pellets
  //Create Yellow Pellet
  fill(255, 215, 0);
  ellipse(YPY, YPX, 15, 15);
  //Create Red Pellet
  fill(250, 0, 0);
  ellipse(RPY, RPX, 15, 15); 
  
  //Create Boundaries
  //Downward Boundaries
  if (EllipseY > 800) {
    EllipseY = 400; 
    EllipseX = 400; 
  }
  //Downward Boundaries
  if (EllipseY < 1){
    EllipseY = 400;
    EllipseX = 400;
  }
    //Rightward Boundaries
    if (EllipseX > 800) {
      EllipseY = 400;
      EllipseX = 400;
    }
    //Leftward Boundaries
    if (EllipseX < 1){
      EllipseY = 400;
      EllipseX = 400;
    }
  }

  void keyPressed() {
    if (key == 's') {
      EllipseSH = 2;
      EllipseSV = 0;
      println("Hello");
      println("D'herro");
      println("d");
    }
    if (key == 'w') {
      EllipseSH = -2;
      EllipseSV = 0;
    }
    if (key == 'a') {
      EllipseSV = -2;
      EllipseSH = 0;
    }
    if (key == 'd') {
      EllipseSV = 2;
      EllipseSH = 0;
    }
  }