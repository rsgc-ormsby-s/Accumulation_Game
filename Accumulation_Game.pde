//Purpose: To accumalate your bubble to become the biggest possible, avoid disappearing
//and eating yellow and red pellets

//Rules: If you eat pellets your size increases and decreases based on the pellet you eat.
//Pellet Descriptions Bellow      

//Pellet Rules: 
//Yellow Pellets = Decreases size by a lot
//Red Pellets = Decreases size by a moderate amount
//Blue Pellets = Increases size by a moderate amount
//Green Pellets = Increases size by a lot.

//Global Variables
//Value of Y for the Object
float RectY = 400;
//Value of X for the Object
float RectX = 400;
//Width of the Object
float RectW = 15;
//Height of the Object
float RectH = 15;
//Horizontal Speed of the Object
float RectSH = 0;
//Vertical Speed of the Object
float RectSV = 0;
//Boundaries ((hitbox)) for the pellets that increase as the size of the Object increases.
float Boundary = 15;
//The method in which the win/lose scenarios are triggered through the increase and deduction of this variable.
float Trigger = 0;
//Value of Y for the Star
float StarY = 1;
//Value of Y for the Second Star
float StarY2 = 300;

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
  //Lose Screen
  PImage Lose = loadImage("Lose.gif"); 
  //Win Screen
  PImage Win = loadImage("Win.png");
  //Load the Background
  background(25, 25, 112);
  
    //Make the Stars Move
  StarY = StarY + 1;
  //Create the Stars
  fill(255, 165, 0); 
   for (int StarX = 100; StarX <= 700; StarX += 150){
    ellipse(StarX, StarY, 15, 15);
  }
    //Make line behind the stars
    stroke(10, 0, 0); 
  for (int StarX2 = 100; StarX2 <= 700; StarX2 += 150){
  line(StarX2, StarY, StarY - 9000, StarX2 - 9000);
  }
  //Create Boundaries for the Stars
  if(StarY > 900){
    StarY = 1; 
  }
  
      //Make the Stars Move
  StarY2 = StarY2 + 1;
  //Create the Stars
  fill(255, 165, 0); 
   for (int StarX = 100; StarX <= 700; StarX += 150){
    ellipse(StarX, StarY2, 15, 15);
  }
    //Make line behind the stars
    stroke(10, 0, 0); 
  for (int StarX2 = 100; StarX2 <= 700; StarX2 += 150){
  line(StarX2, StarY2, StarY2 - 9000, StarX2 - 9000);
  }
  //Create Boundaries for the Stars
  if(StarY2 > 900 ){
    StarY2 = 1; 
  }
  
  //Title in Center of Program
  fill(255, 165, 0);
  textSize(100);
  text("Star Eater", 200, 300);
  textSize(60);
  text("A Game by Simon Ormsby", 30, 400);

  //Create the Moveable Object
  stroke(0, 0, 0);
  fill(128, 35, 205);
  rect(RectX, RectY, RectW, RectH);

  //Create the Illusion of Movement
  //Vertical Movement
  RectX = RectX + RectSV;
  //Horizontal Movement
  RectY = RectY + RectSH;

  //Creates the Pellets

  //Create Yellow Pellet
  stroke(0, 0, 0);
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


  //Make the initial boundary for the IsTouching statement change based on the pellet hit 

  //If the Green Pellet is hit boundary = +6

  if (GPX == 1000) {
    Boundary = Boundary + 6;
    Trigger = Trigger + 1;
    GPX = GPX + Trigger;
  }

  if (GPX2 == 1000) {
    Boundary = Boundary + 6; 
    Trigger = Trigger + 1;
    GPX2 = GPX2 + Trigger;
  }
  if (GPX3 == 1000) {
    Boundary = Boundary + 6;
    Trigger = Trigger + 1;
    GPX3 = GPX3 + Trigger;
  }

  //If the Blue Pellet is hit boundary = +2

  if (BPX == 1000) {
    Boundary = Boundary + 2;
    Trigger = Trigger + 1;
    BPX = BPX + Trigger;
  }

  if (BPX2 == 1000) {
    Boundary = Boundary + 2;
    Trigger = Trigger + 1;
    BPX2 = BPX2 + Trigger;
  }

  if (BPX3 == 1000) {
    Boundary = Boundary + 2;
    Trigger = Trigger + 1;
    BPX3 = BPX3 + Trigger;
  }

  //If the Red Pellet is hit boundary = -2

  if (RPX == 1000) {
    Boundary = Boundary - 2;
    Trigger = Trigger - 1;
    RPX = RPX + Trigger;
  }

  if (RPX2 == 1000) {
    Boundary = Boundary - 2;
    Trigger = Trigger - 1;
    RPX2 = RPX2 + Trigger;
  }

  if (RPX3 == 1000) {
    Boundary = Boundary - 2;
    Trigger = Trigger - 1;
    RPX3 = RPX3 + Trigger;
  }

  //If the Yellow Pellet is hit boundary = -6

  if (YPX == 1000) {
    Boundary = Boundary - 4;
    Trigger = Trigger - 1;
    YPX = YPX + Trigger;
  }

  if (YPX2 == 1000) {
    Boundary = Boundary - 4;
    Trigger = Trigger - 1; 
    YPX2 = YPX2 + Trigger;
  }

  if (YPX3 == 1000) {
    Boundary = Boundary - 4;
    Trigger = Trigger - 1;
    YPX3 = YPX3 + Trigger;
  }
    //Win Conditions (if all blue and green pellets are hit any you attain maximum size, while not hitting any of the red pellets or yellow pellets)
  if (Trigger == 6) {
    image(Win, 1, 1, 800, 800);
    noLoop();
  }

  //Lose Conditions (if all blue and green pellets are hit and you have hit atleast one red or yellow pellet, allowing yourself to not reach maximum size)
  println("Trigger is " + Trigger);
  if ( BPX > 800 && BPX2 > 800 & BPX3 > 800 && GPX > 800 && GPX2 > 800 && GPX3 > 800 && Trigger < 6) {
   image(Lose, 1, 1, 800, 800);
   noLoop();
  }
  //Lose Condition {2} (if the Width of the Object is less than 0 trigger loss screen)
  if (RectW < 0){
   image(Lose, 1, 1, 800, 800);
   noLoop();
  }
}

void keyPressed() {
  //Down Movement
  if (key == 's') {
    RectSH = 2;
    RectSV = 0;
  }
  //Up Movement
  if (key == 'w') {
    RectSH = -2;
    RectSV = 0;
  }
  //Left Movement
  if (key == 'a') {
    RectSV = -2;
    RectSH = 0;
  }
  //Right Movement
  if (key == 'd') {
    RectSV = 2;
    RectSH = 0;
  }
}