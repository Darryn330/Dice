int s = 100;

void setup()
{
  size(1000, 1000);
  noLoop();
}
void draw()
{
  background(255, 120, 155);
  int total = 0;
  for (int i = 0; i < 1000; i += s)
  {
    for (int t = 0; t < 1000; t += s)
    {
      Die diglet = new Die(t, i);
      diglet.roll();
      diglet.show();
      total += diglet.number;
    }
  }
  fill(0);
  textSize(30);
  text("Total: " + total, 400, 505);
}
  void mousePressed()
  {
      redraw();
  }
class Die
{
  int myX, myY;
  int number;

  Die(int x, int y)
  {
    myX = x;
    myY = y;
    number = 1;
  }

  void roll()
  {
    number = (int)(Math.random() * 6) + 1;
  }

  void show()
  {
    fill(255);
    stroke(0);
    strokeWeight(2);
    rect(myX + 5, myY + 5, 80, 80, 10); //WOW YOU CAN CURVE THE RECTANGLE (Thanks Bruno)
    fill(0);
    noStroke();

    if (number == 1 || number == 3 || number == 5)
    {
      ellipse(myX + 45, myY + 45, 12, 12);
    }

    if (number >= 2)
    {
      ellipse(myX + 25, myY + 25, 12, 12);
      ellipse(myX + 65, myY + 65, 12, 12);
    }

    if (number >= 4)
    {
      ellipse(myX + 65, myY + 25, 12, 12);
      ellipse(myX + 25, myY + 65, 12, 12);
    }

    if (number == 6)
    {
      ellipse(myX + 25, myY + 45, 12, 12);
      ellipse(myX + 65, myY + 45, 12, 12);
    }
  }
}
