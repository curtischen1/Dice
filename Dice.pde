
void setup()
{
  noLoop();
  size(500, 500);
}
void draw()
{
  int sumDice = 0;
  background(111, 53, 129);
  for(int y = 20; y < 400; y = y + 60){
    for(int x = 20; x < 450; x = x + 60){
  Die bob = new Die(x, y);
  bob.roll();
  bob.show();
  sumDice = sumDice + bob.roll;
    }
  }
  textSize(50);
  text("Sum:" + sumDice, 135, 470);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, roll;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll = 0;
  }
  void roll()
  {
    roll = (int)(Math.random()*6+1);
  }
  void show()
  {
    if (roll == 6) {
      fill(255);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX+10,myY+8,10,10);
      ellipse(myX+30,myY+8,10,10);
      ellipse(myX+10,myY+20,10,10);
      ellipse(myX+30,myY+20,10,10);
      ellipse(myX+10,myY+32,10,10);
      ellipse(myX+30,myY+32,10,10);
    } else if (roll == 5) {
      fill(255);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX+10,myY+8,10,10);
      ellipse(myX+30,myY+8,10,10);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+10,myY+32,10,10);
      ellipse(myX+30,myY+32,10,10);
    } else if (roll == 4) {
      fill(255);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX+10,myY+8,10,10);
      ellipse(myX+30,myY+8,10,10);
      ellipse(myX+10,myY+32,10,10);
      ellipse(myX+30,myY+32,10,10);
    } else if (roll == 3) {
      fill(255);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX+10,myY+8,10,10);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+30,myY+32,10,10);
    } else if (roll == 2){
      fill(255);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX+10,myY+8,10,10);
      ellipse(myX+30,myY+32,10,10);
    }else if (roll == 1){
      fill(255);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX+20,myY+20,10,10);
    }
  }
}
