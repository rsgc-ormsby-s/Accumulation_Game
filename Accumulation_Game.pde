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
float RectW = 15;
float RectH = 15;
float RectSH = 0;
float RectSV = 0;
float Boundary = 15;

//Pellet {1} Variables
float YPY = random(1, 600);
float YPX = random(1, 600);
float RPY = random(1, 600);
float RPX = random(1, 600);
float BPY = random(1, 600);
float BPX = random(1, 600);
float GPY = random(1, 600);
float GPX = random(1, 600);

//Pellet {2} Variables
float YPY2 = random(1, 600);
float YPX2 = random(1, 600);
float RPY2 = random(1, 600);
float RPX2 = random(1, 600);
float BPY2 = random(1, 600);
float BPX2 = random(1, 600);
float GPY2 = random(1, 600);
float GPX2 = random(1, 600);

//Pellet {3} Variables
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
    
  PImage Lose = loadImage("Lose.gif"); 
PImage Win = loadImage("Win.png");
  //Create and Clear the Background
  background(255, 69, 0);
  
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
rect(RPX3, RPY3, 10, 10);

//Creates the Third Blue Pellet
fill(0, 0, 250);
rect(BPX3, BPY3, 10, 10);

//Creates the Third Green Pellet
fill(0, 250, 0);
rect(GPX3, GPY3, 10, 10);

  //If the circle is touching the pellets, send pellet off screen, make circle bigger or smaller (depending on pellet colour)
  //Hit Detection for First Set of Pellets
  
  //Yellow Pellet IsTouching (makes the object you touch fly away and makes the rectangle smaller by a large amount)
  if (RectX > YPX - Boundary && YPX + Boundary > RectX && RectY > YPY - Boundary && RectY < YPY + Boundary ) {
    YPX = 1000;
    RectW = RectW - 8;
    RectH = RectH - 8;
  }
    //Red Pellet IsTouching (makes the object you touch fly away and makes the rectangle smaller by a small amount)
    if (RectX > RPX - Boundary && RPX + Boundary > RectX && RectY > RPY - Boundary && RectY < RPY + Boundary ) {
      RPX = 1000;
      RectW = RectW - 4;
      RectH = RectH - 4;
    }
    //Blue Pellet IsTouching (makes the object you touch fly away and makes the rectangle bigger by a small amount)
    if (RectX > BPX - Boundary && BPX + Boundary > RectX && RectY > BPY - Boundary && RectY < BPY + Boundary ) {
      BPX = 1000;
      RectW = RectW + 4;
      RectH = RectH + 4;
    }
    //Green Pellet isTouching (makes the object you touch fly away and makes the rectangle bigger by a large amount)
    if (RectX > GPX - Boundary && GPX + Boundary > RectX && RectY > GPY - Boundary && RectY < GPY + Boundary ) {
      GPX = 1000;
      RectW = RectW + 8;
      RectH = RectH + 8;
    }
    
    //Hit Detection for Second Set of Pellets
    
    //Yellow Pellet #2 isTouching
      
  if (RectX > YPX2 - Boundary && YPX2 + Boundary > RectX && RectY > YPY2 - Boundary && RectY < YPY2 + Boundary ) {
    YPX2 = 1000;
    RectW = RectW - 8;
    RectH = RectH - 8;
  }
  
    //Red Pellet #2 isTouching
    
    if (RectX > RPX2 - Boundary && RPX2 + Boundary > RectX && RectY > RPY2 - Boundary && RectY < RPY2 + Boundary ) {
      RPX2 = 1000;
      RectW = RectW - 4;
      RectH = RectH - 4;
    }
    
    //Blue Pellet #2 isTouching
    
    if (RectX > BPX2 - Boundary && BPX2 + Boundary > RectX && RectY > BPY2 - Boundary && RectY < BPY2 + Boundary ) {
      BPX2 = 1000;
      RectW = RectW + 4;
      RectH = RectH + 4;
    }
    
    
    //Green Pellet #2 isTouching
    
    if (RectX > GPX2 - Boundary && GPX2 + Boundary > RectX && RectY > GPY2 - Boundary && RectY < GPY2 + Boundary ) {
      GPX2 = 1000;
      RectW = RectW + 8;
      RectH = RectH + 8;
    }
    
    
    //Hit Detection for Third Set of Pellets
    
    //Yellow Pellet #3 isTouching 
    
    if (RectX > YPX3 - Boundary && YPX3 + Boundary > RectX && RectY > YPY3 - Boundary && RectY < YPY3 + Boundary ) {
    YPX3 = 1000;
    RectW = RectW - 8;
    RectH = RectH - 8;
  }
  
    //Red Pellet #3 isTouching
    
      if (RectX > RPX3 - Boundary && RPX3 + Boundary > RectX && RectY > RPY3 - Boundary && RectY < RPY3 + Boundary ) {
      RPX3 = 1000;
      RectW = RectW - 4;
      RectH = RectH - 4;
    }
    
    //Blue Pellet #3 isTouching
    
        if (RectX > BPX3 - Boundary && BPX3 + Boundary > RectX && RectY > BPY3 - Boundary && RectY < BPY3 + Boundary ) {
      BPX3 = 1000;
      RectW = RectW + 4;
      RectH = RectH + 4;
        }
    //Green Pellet #3 isTouching
    
     if (RectX > GPX3 - Boundary && GPX3 + Boundary > RectX && RectY > GPY3 - Boundary && RectY < GPY3 + Boundary ) {
      GPX3 = 1000;
      RectW = RectW + 8;
      RectH = RectH + 8;
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
    //Win Conditions (if all blue and green pellets are hit any you attain maximum size, while not hitting any of the red pellets or yellow pellets)
    if(RectW == 90 && GPX == 1000 && GPX2 == 1000 && GPX3 == 1000 && BPX == 1000 && BPX2 == 1000 && BPX3 == 1000){
      textSize(80);
      image(Win, 1, 1, 800, 800);
      noLoop();
    }
    //Win Conditions (if all blue and green pellets are hit and you have hit atleast one red or yellow pellet, allowing yourself to not reach maximum size)
     if(RectW < 90 && GPX == 1000 && GPX2 == 1000 && GPX3 == 1000 && BPX == 1000 && BPX2 == 1000 && BPX3 == 1000){
     textSize(80);
     image(Lose, 1, 1, 800, 800);
     noLoop();
      }
      
      //Make the initial boundary for the IsTouching statement change based on the pellet hit 
      
      //If the Green Pellet is hit boundary = +6
      
      if(GPX == 1000){
      Boundary = Boundary + 6;
      GPX = GPX + 1;
      }
      
      if(GPX2 == 1000){
      Boundary = Boundary + 6; 
      GPX2 = GPX2 + 1;
      }
      if(GPX3 == 1000){
      Boundary = Boundary + 6;
      GPX3 = GPX3 + 1;
      }
      
      //If the Blue Pellet is hit boundary = +2
      
      if(BPX == 1000){
      Boundary = Boundary + 2;
      BPX = BPX + 1;
      }
      
      if(BPX2 == 1000){
      Boundary = Boundary + 2;
      BPX2 = BPX2 + 1;
      }
      
      if(BPX3 == 1000){
      Boundary = Boundary + 2;
      BPX3 = BPX3 + 1;
      }
      
      //If the Red Pellet is hit boundary = -2
      
      if(RPX == 1000){
      Boundary = Boundary - 2;
      RPX = RPX + 1;
      }
      
      if(RPX2 == 1000){
      Boundary = Boundary - 2;
      RPX2 = RPX2 + 1;
      }
      
      if(RPX3 == 1000){
      Boundary = Boundary - 2;
      RPX3 = RPX3 + 1;
      }
      
      //If the Yellow Pellet is hit boundary = -6
      
      if(YPX == 1000){
        Boundary = Boundary - 6;
        YPX = YPX + 1;
      }
      
      if(YPX2 == 1000){
        Boundary = Boundary - 6;
        YPX2 = YPX2 + 1;
      }
      
      if(YPX3 == 1000){
        Boundary = Boundary - 6;
        YPX3 = YPX3 + 1;
      }
        
      
  }

  void keyPressed() {
    if (key == 's') {
      RectSH = 2;
      RectSV = 0;
     println("lmao");
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