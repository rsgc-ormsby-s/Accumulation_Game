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
float RectW = 10;
float RectH = 10;
float RectSH = 0;
float RectSV = 0;
float YPY = random(1, 600);
float YPX = random(1, 600);
float RPY = random(1, 600);
float RPX = random(1, 600);
float BPY = random(1, 600);
float BPX = random(1, 600);
float GPY = random(1, 600);
float GPX = random(1, 600);

//Functions only run once.
void setup() {
  size(800, 800);
}

void draw() {
  
  //Create and Clear the Background
  background(0, 0, 100);
  fill(128, 35, 205);
  rect(RectX, RectY, RectW, RectH);
  
  //Create the Illusion of Movement
  //Vertical Movement
  RectX = RectX + RectSV;
  //Horizontal Movement
  RectY = RectY + RectSH;
  
  //Creates the Pellets
  //Create Yellow Pellet
  fill(255, 215, 0);
  rect(YPX, YPY, 10, 10);
  //Create Red Pellet
  fill(250, 0, 0);
  rect(RPX, RPY, 10, 10); 
  //Create Blue Pellet
  fill(0, 0, 250);
  rect(BPX, BPY, 10, 10);
  //Create Green Pellet
  fill(0, 250, 0); 
  rect(GPX, GPY, 10, 10);

  
  //If the circle is touching the pellets, send pellet off screen, make circle bigger or smaller (depending on pellet colour)
  
  //Yellow Pellet IsTouching
  if(RectX > YPX - 10 && YPX + 10 > RectX && RectY > YPY - 10 && RectY < YPY + 10 ){
    YPX = 1000;
    RectW = RectW - 8;
    RectH = RectH - 8;
  }
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