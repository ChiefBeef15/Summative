//https://github.com/mmoub1/Summative.git
Enemies[] myEnemies = new Enemies[4]; //creating enemy class
int xPos = 200; //user x positon
int yPos = 200; //user y position
int Speed = 3; //user's speed
boolean Up = false; //user's direction statements
boolean Down = false;
boolean Left = false;
boolean Right = false;
PImage myImage;
PImage myImage2;
PImage myImage3;
PImage myImage4;
<<<<<<< HEAD
=======
PImage myImage5;
PImage myImage6;
PImage myImage7;
PImage myImage8;
boolean GameOn = false;
boolean GameOver = false;
boolean hitr = false;
boolean hitl = false;
boolean hitu = false;
boolean hitd = false;
>>>>>>> refs/remotes/mmoub1/master

void setup() {
  size(600, 600); //background size
  smooth();
  noStroke();
  background(255, 255, 255);
  myImage = loadImage("Eren (right).png");
  myImage2 = loadImage("Eren (left).png");
  myImage3 = loadImage("Eren (front).png");
<<<<<<< HEAD
  myImage4 = loadImage("Eren (Back).png");
 
  rectMode(CENTER); 
=======
  myImage4 = loadImage("Eren (back).png");
  myImage5 = loadImage("Titan (front).png");
  myImage6 = loadImage("Titan1 (right).png");
  myImage7 = loadImage("Titan1 (left).png");
  myImage8 = loadImage("Titan (back).png");
  image(myImage3, xPos, yPos);
  myImage.resize(32, 30);
  myImage2.resize(32, 30);
  myImage3.resize(32, 30);
  myImage4.resize(32, 30);
  myImage5.resize(30, 30);
  myImage6.resize(30, 30);
  myImage7.resize(30, 30);
  myImage8.resize(30, 30);
>>>>>>> refs/remotes/mmoub1/master
  for (int i = 0; i < 4; i++) { //enemy for loop
    myEnemies[i] = new Enemies(round(random(245, 365)), round(random(255, 285)), color(255, 0, 0), 2, false, false, false, false, false, false, false, false, 
      false, false, false, false, false, false, false, false, false, false, false, false);
  }
}

void draw() {
  background(255);
  myImage.resize(32, 30);
  myImage2.resize(32, 30);
  myImage3.resize(32, 30);
  Maze();
  hit();
  for (int i =0; i < 4; i++) {
    myEnemies[i].update(); 
    myEnemies[i].display();
  }
println(mouseX, mouseY);
  //println(Speed);

  if (keyCode == RIGHT) {                              
    image(myImage, xPos, yPos);
  }
  if (keyCode == LEFT) {
    image(myImage2, xPos, yPos);
  }
  if (keyCode == DOWN) {                              
    image(myImage3, xPos, yPos);
  }
  if (keyCode == UP) {                              
    image(myImage4, xPos, yPos);
  }

  //user movements
  if ((Right == true) && (hitr == false))
  {
    GameOn = true;
    xPos = xPos+ Speed;
  }

  if ((Left == true) && (hitl == false)) {
    xPos = xPos - Speed;
    GameOn = true;
  }

  if ((Up == true) && (hitu == false)) {
    yPos = yPos - Speed;
    GameOn = true;
  }

  if ((Down == true) && (hitd == false)) {
    yPos = yPos + Speed;
    GameOn = true;
  }
  if ((yPos+10 > 265) && (yPos+20 < 310) && (xPos < 3 )) {
    xPos = 565;
  }
  
  if ((yPos+10 > 265) && (yPos+20 < 310) && (xPos+32 > 597)){
    xPos = 10;
  }
  
  
  
}
//controlling user movements
void keyPressed() {
  if (keyCode == RIGHT) {
    Right = true;
    Left = false;
    Up = false;
    Down = false;
    GameOn = true;
  }

  if (keyCode == LEFT) {
    Left = true;
    Up = false;
    Down = false;
    Right = false;
    GameOn = true;
  }

  if (keyCode == UP) {
    Up = true;
    Down = false;
    Right = false;
    Left = false;
    GameOn = true;
  }

  if (keyCode == DOWN) {
    Down = true;
    Up = false;
    Right = false;
    Left = false;
    GameOn = true;
  }
  //end of user controls
}  