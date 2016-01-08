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
float RectW = 30;
float RectH = 30;
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

float YPY2 = random(1, 600);
float YPX2 = random(1, 600);
float RPY2 = random(1, 600);
float RPX2 = random(1, 600);
float BPY2 = random(1, 600);
float BPX2 = random(1, 600);
float GPY2 = random(1, 600);
float GPX2 = random(1, 600);

float YPY3 = random(1, 600);
float YPX3 = random(1, 600);
float RPY3 = random(1, 600);
float RPX3 = random(1, 600);
float BPY3 = random(1, 600);
float BPX3 = random(1, 600);
float GPY3 = random(1, 600);
float GPX3 = random(1, 600);

//Functions only run once.
void setup() {
  size(800, 800);
}

void draw() {
    
  //Create and Clear the Background
  background(0, 0, 100);
  
    //Title in Center of Program
    fill(150, 0, 0);
    textSize(50);
    text("Accumulation the Game", 120, 400);
  
  //Create the Moveable Object
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
  
  //Create the Second Set of Pellets
  
  //Create the Second Yellow Pellet
  fill(255, 215, 0);
  rect(YPX2, YPY2, 10, 10);
  //Create the Second Red Pellet
  fill(250, 0, 0);
  rect(RPX2, RPY2, 10, 10);
  //Create the Second Blue Pellet
  fill(0, 0, 250);
  rect(BPX2, BPY2, 10, 10);
  //Create the Second Green Pellet
  fill(0, 250, 0);
  rect(GPX2, GPY2, 10, 10);

//Creates the Third Set of Pellets

//Creates the Third Yellow Pellet
fill(255, 215, 0);
rect(YPX3, YPY3, 10, 10);
//Creates the Third Red Pellet
fill(250, 0, 0);
rect(RPX2, RPY2, 10, 10);
//Creates the Third Blue Pellet
fill(0, 0, 250);


//Creates the Third Green Pellet
fill(0, 250, 0);
rect(GPX3, GPY3, 10, 10);

  //If the circle is touching the pellets, send pellet off screen, make circle bigger or smaller (depending on pellet colour)
  //Hit Detection for First Set of Pellets
  
  //Yellow Pellet IsTouching (makes the object you touch fly away and makes the rectangle smaller by a large amount)
  if (RectX > YPX - 10 && YPX + 10 > RectX && RectY > YPY - 10 && RectY < YPY + 10 ) {
    YPX = 1000;
    RectW = RectW - 8;
    RectH = RectH - 8;
  }
    //Red Pellet IsTouching (makes the object you touch fly away and makes the rectangle smaller by a small amount)
    if (RectX > RPX - 10 && RPX + 10 > RectX && RectY > RPY - 10 && RectY < RPY + 10 ) {
      RPX = 1000;
      RectW = RectW - 4;
      RectH = RectH - 4;
    }
    //Blue Pellet IsTouching (makes the object you touch fly away and makes the rectangle bigger by a small amount)
    if (RectX > BPX - 10 && BPX + 10 > RectX && RectY > BPY - 10 && RectY < BPY + 10 ) {
      BPX = 1000;
      RectW = RectW + 10;
      RectH = RectH + 10;
    }
    //Green Pellet isTouching (makes the object you touch fly away and makes the rectangle bigger by a large amount)
    if (RectX > GPX - 10 && GPX + 10 > RectX && RectY > GPY - 10 && RectY < GPY + 10 ) {
      GPX = 1000;
      RectW = RectW + 15;
      RectH = RectH + 15;
    }
    
    //Hit Detection for Second Set of Pellets
    
    //Yellow Pellet #2 isTouching
      
  if (RectX > YPX2 - 10 && YPX2 + 10 > RectX && RectY > YPY2 - 10 && RectY < YPY2 + 10 ) {
    YPX2 = 1000;
    RectW = RectW - 8;
    RectH = RectH - 8;
  }
  
    //Red Pellet #2 isTouching
    
    if (RectX > RPX2 - 10 && RPX2 + 10 > RectX && RectY > RPY2 - 10 && RectY < RPY2 + 10 ) {
      RPX2 = 1000;
      RectW = RectW - 4;
      RectH = RectH - 4;
    }
    
    //Blue Pellet #2 isTouching
    
    if (RectX > BPX2 - 10 && BPX2 + 10 > RectX && RectY > BPY2 - 10 && RectY < BPY2 + 10 ) {
      BPX2 = 1000;
      RectW = RectW + 10;
      RectH = RectH + 10;
    }
    
    
    //Green Pellet #2 isTouching
    
    if (RectX > GPX2 - 10 && GPX2 + 10 > RectX && RectY > GPY2 - 10 && RectY < GPY2 + 10 ) {
      GPX2 = 1000;
      RectW = RectW + 15;
      RectH = RectH + 15;
    }
    
    
    //Hit Detection for Third Set of Pellets
    
    //Yellow Pellet #3 isTouching 
    
    if (RectX > YPX3 - 10 && YPX3 + 10 > RectX && RectY > YPY3 - 10 && RectY < YPY3 + 10 ) {
    YPX3 = 1000;
    RectW = RectW - 8;
    RectH = RectH - 8;
  }
  
    //Red Pellet #3 isTouching
    
      if (RectX > RPX3 - 10 && RPX3 + 10 > RectX && RectY > RPY3 - 10 && RectY < RPY3 + 10 ) {
      RPX3 = 1000;
      RectW = RectW - 4;
      RectH = RectH - 4;
    }
    
    //Blue Pellet #3 isTouching
    
        if (RectX > BPX3 - 10 && BPX3 + 10 > RectX && RectY > BPY3 - 10 && RectY < BPY3 + 10 ) {
      BPX3 = 1000;
      RectW = RectW + 10;
      RectH = RectH + 10;
        }
    //Green Pellet #3 isTouching
    
     if (RectX > GPX3 - 10 && GPX3 + 10 > RectX && RectY > GPY3 - 10 && RectY < GPY3 + 10 ) {
      GPX3 = 1000;
      RectW = RectW + 15;
      RectH = RectH + 15;
    }
    
    
    //Create the Boundaries (Places the object you move back in the starting position if you go past the sides of the game)

    //Downward Boundaries
    if (RectY > 800) {
      RectY = 400; 
      RectX = 400;
    }
    //Downward Boundaries
    if (RectY < 1) {
      RectY = 400;
      RectX = 400;
    }
    //Rightward Boundaries
    if (RectX > 800) {
      RectY = 400;
      RectX = 400;
    }
    //Leftward Boundaries
    if (RectX < 1) {
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