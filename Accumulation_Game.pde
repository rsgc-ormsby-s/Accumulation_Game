//Purpose: To accumalate your bubble to become the biggest

//Rules: If you eat pellets your size increases and decreases based on the pellet you eat.
//Pellet Descriptions Bellow      

//Pellet Rules: 
//Yellow Pellets = Decreases size by a lot
//Red Pellets = Decreases size by a moderate amount
//Blue Pellets = Increases size by a moderate amount
//Green Pellets = Increases size by a lot.

//Global Variables
float RectY = 400;
float RectX = 400;
float RectW = 50;
float RectH = 50;
float RectSH = 0;
float RectSV = 0;
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
  ellipse(RectX, RectY, RectW, RectH);
  
  //Create the Illusion of Movement
  //Vertical Movement
  RectX = RectX + RectSV;
  //Horizontal Movement
  RectY = RectY + RectSH;
  
  //Creates the Pellets
  //Create Yellow Pellet
  fill(255, 215, 0);
  rect(YPY, YPX, 15, 15);
  //Create Red Pellet
  fill(250, 0, 0);
  rect(RPY, RPX, 15, 15); 
  
  //Create Boundaries
  //Downward Boundaries
  if (RectY > 800) {
    RectY = 400; 
    RectX = 400; 
  }
  //Downward Boundaries
  if (RectY < 1){
    RectY = 400;
    RectX = 400;
  }
    //Rightward Boundaries
    if (RectX > 800) {
      RectY = 400;
      RectX = 400;
    }
    //Leftward Boundaries
    if (RectX < 1){
      RectY = 400;
      RectX = 400;
    }
  }

  void keyPressed() {
    if (key == 's') {
      RectSH = 2;
      RectSV = 0;
      println("Is the Program working?");
    }
    if (key == 'w') {
      RectSH = -2;
      RectSV = 0;
    }
    if (key == 'a') {
      RectSV = -2;
      RectSH = 0;
    }
    if (key == 'd') {
      RectSV = 2;
      RectSH = 0;
    }
  }